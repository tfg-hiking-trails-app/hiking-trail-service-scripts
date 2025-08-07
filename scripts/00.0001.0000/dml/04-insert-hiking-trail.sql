INSERT INTO HikingTrail (difficulty_level_id, terrain_type_id, trail_type_id, name, description, distance, lowest_elevation, highest_elevation, start_time, end_time, ubication, pet_friendly)
VALUES
    (1, 1, 1, 'Easy Trail', 'A nice and easy trail for beginners.', 5.0, 100, 200, '2025-08-03 12:00:00', '2025-08-03 14:30:00', 'Park Entrance', true),
    (2, 2, 2, 'Medium Trail', 'A moderately challenging trail.', 10.0, 200, 400, '2025-08-03 09:00:00', '2025-08-03 15:00:00', 'Lake View', true),
    (3, 3, 3, 'Hard Trail', 'A hard trail for experienced hikers.', 15.0, 400, 800, '2025-08-03 07:00:00', '2025-08-03 17:00:00', 'Mountain Base', false),
    (4, 4, 1, 'Very Hard Trail', 'A very hard trail for expert hikers only.', 20.0, 800, 1200, '2025-08-03 06:00:00', '2025-08-03 18:00:00', 'Summit', false);