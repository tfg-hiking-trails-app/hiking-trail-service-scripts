CREATE TABLE IF NOT EXISTS MetricsScore (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    code CHAR(36) NOT NULL DEFAULT (UUID()),
    account_code CHAR(36) NOT NULL,
    distance TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de la distancia (0-10)' CHECK (distance BETWEEN 0 AND 10),
    duration TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de la duración (0-10)' CHECK (duration BETWEEN 0 AND 10),
    steps TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de los pasos (0-10)' CHECK (steps BETWEEN 0 AND 10),
    calories TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de las calorías (0-10)' CHECK (calories BETWEEN 0 AND 10),
    pace TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia del ritmo medio (0-10)' CHECK (pace BETWEEN 0 AND 10),
    elevation TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia del desnivel (0-10)' CHECK (elevation BETWEEN 0 AND 10),
    heart_rate TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de la frecuencia cardíaca (0-10)' CHECK (heart_rate BETWEEN 0 AND 10),
    speed TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de la velocidad media (0-10)' CHECK (speed BETWEEN 0 AND 10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);