CREATE TABLE IF NOT EXISTS HikingTrail (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    code CHAR(36) NOT NULL DEFAULT UUID(),
    difficulty_level_id INT UNSIGNED,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    distance DECIMAL(5, 2) NOT NULL,
    lowest_elevation INT UNSIGNED,
    highest_elevation INT UNSIGNED,
    start_time DATETIME,
    end_time DATETIME,
    ubication VARCHAR(255) NOT NULL,
    pet_friendly BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (difficulty_level_id) REFERENCES DifficultyLevel(id)
);