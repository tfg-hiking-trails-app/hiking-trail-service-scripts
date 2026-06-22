CREATE TABLE IF NOT EXISTS CollectionTrail (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    code CHAR(36) NOT NULL DEFAULT (UUID()),
    collection_id INT UNSIGNED NOT NULL,
    hiking_trail_id INT UNSIGNED NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY uq_collection_trail (collection_id, hiking_trail_id), -- a trail can only be once per collection
    FOREIGN KEY (collection_id) REFERENCES Collection(id) ON DELETE CASCADE,
    FOREIGN KEY (hiking_trail_id) REFERENCES HikingTrail(id) ON DELETE CASCADE
);
