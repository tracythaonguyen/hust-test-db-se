-- TRIGGER

-- Trigger to set the end time of a reservation to 30 minutes after the start time
DROP TRIGGER IF EXISTS set_res_time_end_trigger ON reservations;

CREATE OR REPLACE FUNCTION set_res_time_end()
RETURNS TRIGGER AS $$
BEGIN
    NEW.res_time_end := NEW.res_time_start + INTERVAL '30 minute';
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_res_time_end_trigger
BEFORE INSERT ON reservations
FOR EACH ROW
EXECUTE FUNCTION set_res_time_end();

-- Trigger to updates the mem_type based on the value of the point
CREATE OR REPLACE FUNCTION update_mem_type()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.point < 1000 THEN
        NEW.mem_type = 'Bronze';
    ELSIF NEW.point >= 1000 AND NEW.point < 3000 THEN
        NEW.mem_type = 'Silver';
    ELSIF NEW.point >= 3000 AND NEW.point < 5000 THEN
        NEW.mem_type = 'Gold';
    ELSIF NEW.point >= 5000 THEN
        NEW.mem_type = 'Diamond';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_mem_type_trigger
BEFORE INSERT OR UPDATE OF point ON customers
FOR EACH ROW
EXECUTE FUNCTION update_mem_type();

-- Trigger auto computes final price of an order (after tax 2%)
DROP TRIGGER IF EXISTS compute_final_price_trigger ON orders;

CREATE OR REPLACE FUNCTION compute_final_price()
RETURNS TRIGGER AS $$
BEGIN
    NEW.final_price = NEW.total_price * (1 + 0.02);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER compute_final_price_trigger
BEFORE INSERT OR UPDATE OF total_price ON orders
FOR EACH ROW
EXECUTE FUNCTION compute_final_price();

-- Trigger calculate point after order


-- PROCEDURE
-- procedure to delete old reservations
CREATE OR REPLACE PROCEDURE delete_old_reservations()
LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM reservations
    WHERE res_date <= CURRENT_DATE AND res_time_end <= (CURRENT_TIME + INTERVAL '7 hours');

    -- Update table_status in the tables table
    UPDATE tables t
    SET table_status = CASE
        WHEN t.table_status = 0 OR t.table_status = 2 THEN
            CASE
                WHEN EXISTS (SELECT 1 FROM reservations WHERE table_id = t.table_id
                                AND res_date >= CURRENT_DATE
                                AND res_time_start >= (CURRENT_TIME + INTERVAL '7 hours')
                        ) THEN 2
                ELSE 0
            END
        ELSE t.table_status
    END;
END;
$$;

CALL delete_old_reservations()

