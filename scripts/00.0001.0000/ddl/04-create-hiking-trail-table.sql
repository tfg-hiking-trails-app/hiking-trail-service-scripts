CREATE TABLE IF NOT EXISTS HikingTrail (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    code CHAR(36) NOT NULL DEFAULT (UUID()),
    account_code CHAR(36) NOT NULL,
    difficulty_level_id INT UNSIGNED,
    terrain_type_id INT UNSIGNED,
    trail_type_id INT UNSIGNED,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    pet_friendly BOOLEAN DEFAULT FALSE,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    location_latitude DECIMAL(9, 6) NOT NULL,
    location_longitude DECIMAL(9, 6) NOT NULL,
    location POINT NOT NULL,
    deleted BOOLEAN DEFAULT FALSE,
    generated_by_fit_file BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    SPATIAL INDEX idx_location (location),
    FOREIGN KEY (difficulty_level_id) REFERENCES DifficultyLevel(id),
    FOREIGN KEY (terrain_type_id) REFERENCES TerrainType(id),
    FOREIGN KEY (trail_type_id) REFERENCES TrailType(id)
);

DELIMITER $$

CREATE TRIGGER bi_hikingtrail_location
BEFORE INSERT ON HikingTrail
FOR EACH ROW
BEGIN
    SET NEW.location = ST_SRID(
        POINT(NEW.location_longitude, NEW.location_latitude),
        4326
    );
END$$

CREATE TRIGGER bu_hikingtrail_location
BEFORE UPDATE ON HikingTrail
FOR EACH ROW
BEGIN
    SET NEW.location = ST_SRID(
        POINT(NEW.location_longitude, NEW.location_latitude),
        4326
    );
END$$

DELIMITER ;
