-- ------------------------------------------------
-- Version: v1.24
--
-- Description: Migration that updates the available scientific domains.
-- -------------------------------------------------

-- Remove existing domain associations from prefixes,
-- since the previous domain values are being replaced.
UPDATE prefix
SET domain_id = NULL
WHERE domain_id IS NOT NULL;

DELETE FROM domain;

ALTER TABLE domain AUTO_INCREMENT = 1;

INSERT INTO domain (id, domain_id, name, description) VALUES
(
    1,
    'scientific_domain-life_sciences',
    'Life Sciences',
    'Agricultural Sciences, Neurosciences, Pharmacy, etc.'
),
(
    2,
    'scientific_domain-physical_sciences',
    'Physical Sciences',
    'Chemistry, Engineering, Computer Science, Physics, Mathematics'
),
(
    3,
    'scientific_domain-health_sciences',
    'Health Sciences',
    'Medicine, Nursing, Veterinary Medicine'
),
(
    4,
    'scientific_domain-social_sciences',
    'Social Sciences',
    'Arts, Humanities, Business Administration, Psychology'
);