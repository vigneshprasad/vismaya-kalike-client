-- Seed data for the teacher reports app based on seed.txt structure

-- Insert facilitators
INSERT INTO facilitators (id, name, contact_number, alias) VALUES
('550e8400-e29b-41d4-a716-446655440001', 'Afreen Fathima', '+91 91482 00294', NULL),
('550e8400-e29b-41d4-a716-446655440002', 'Noor ul Huda', '+91 86184 46965', ARRAY['Huda Vika Jhendagalli']),
('550e8400-e29b-41d4-a716-446655440003', 'Sahira Banu', '+91 72043 46660', ARRAY['Sahira Banu ViKa']),
('550e8400-e29b-41d4-a716-446655440004', 'Prashanth', '+91 77957 06285', ARRAY['Prashanth TR Nagar']),
('550e8400-e29b-41d4-a716-446655440005', 'Rajeshwari', '+91 70266 74030', ARRAY['Rajeshwari Halasuru Facilitator']);

-- Insert partner organisations
INSERT INTO partner_organisations (id, name) VALUES
('650e8400-e29b-41d4-a716-446655440001', 'Sangama'),
('650e8400-e29b-41d4-a716-446655440002', 'T Muniswamappa Trust'),
('650e8400-e29b-41d4-a716-446655440003', 'Stree Jagruti Samiti');

-- Insert learning centres
INSERT INTO learning_centres (id, centre_name, area, city, district, state, country, start_date) VALUES
('750e8400-e29b-41d4-a716-446655440001', 'Fakir Colony', 'Fakir Colony', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India', NULL),
('750e8400-e29b-41d4-a716-446655440002', 'Jhenda Gully', 'Jhenda Gully', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India', NULL),
('750e8400-e29b-41d4-a716-446655440003', 'Avalahalli', 'Avalahalli', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India', NULL),
('750e8400-e29b-41d4-a716-446655440004', 'T R Nagar', 'T R Nagar', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India', NULL),
('750e8400-e29b-41d4-a716-446655440005', 'Halasuru', 'Halasuru', 'Bengaluru', 'Bengaluru', 'Karnataka', 'India', NULL);

-- Link facilitators to learning centres
INSERT INTO learning_centre_facilitators (learning_centre_id, facilitator_id) VALUES
('750e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001'), -- Fakir Colony - Afreen Fathima
('750e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002'), -- Jhenda Gully - Noor ul Huda
('750e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440003'), -- Avalahalli - Sahira Banu
('750e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440004'), -- T R Nagar - Prashanth
('750e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440005'); -- Halasuru - Rajeshwari

-- Link partner organisations to learning centres
INSERT INTO learning_centre_partner_organisations (learning_centre_id, partner_organisation_id) VALUES
('750e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001'), -- Fakir Colony - Sangama
('750e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440002'), -- Avalahalli - T Muniswamappa Trust
('750e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440003'); -- T R Nagar - Stree Jagruti Samiti