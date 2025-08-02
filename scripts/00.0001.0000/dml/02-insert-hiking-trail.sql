INSERT INTO HikingTrail (difficulty_level_id, name, description, distance, lowest_elevation, highest_elevation, start_time, end_time, ubication, pet_friendly)
VALUES
    (1, 'Easy Trail', 'A nice and easy trail for beginners.', 5.0, 100, 200, '08:00', '12:00', 'Park Entrance', true),
    (2, 'Medium Trail', 'A moderately challenging trail.', 10.0, 200, 400, '09:00', '15:00', 'Lake View', true),
    (3, 'Hard Trail', 'A hard trail for experienced hikers.', 15.0, 400, 800, '07:00', '17:00', 'Mountain Base', false),
    (4, 'Very Hard Trail', 'A very hard trail for expert hikers only.', 20.0, 800, 1200, '06:00', '18:00', 'Summit', false);