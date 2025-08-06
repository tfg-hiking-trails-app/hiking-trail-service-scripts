CREATE TABLE IF NOT EXISTS HikingTrail (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    code CHAR(36) NOT NULL DEFAULT UUID(),
    difficulty_level_id INT UNSIGNED,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    distance DECIMAL(5, 2) NOT NULL,
    pet_friendly BOOLEAN DEFAULT FALSE,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    duration INT UNSIGNED NOT NULL,
    ubication_latitude DECIMAL(9, 6) NOT NULL,
    ubication_longitude DECIMAL(9, 6) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (difficulty_level_id) REFERENCES DifficultyLevel(id)
);