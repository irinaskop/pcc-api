-- ------------------------------------------------
-- Version: v1.26
--
-- Description: Migration that ensures service names are unique.
-- -------------------------------------------------

ALTER TABLE service
ADD CONSTRAINT uk_service_name UNIQUE (name);