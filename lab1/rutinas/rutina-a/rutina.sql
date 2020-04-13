-- TRIGGER A
-- The "update subscription date" trigger updates the "subscription date"
-- from a "client" to the current date each time it is detected that the plan
-- of subscription changed (for example, from basic to premium plan). Must be
-- update the "subscription date" only and only if there was a change of plan.

CREATE TRIGGER subscription_date
  BEFORE UPDATE ON client
  FOR EACH ROW
    BEGIN
      IF OLD.type_subscription != NEW.type_subscription THEN
        SET NEW.date_subscription = curdate();
      END IF;
    END;