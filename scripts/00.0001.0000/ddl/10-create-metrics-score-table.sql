CREATE TABLE IF NOT EXISTS MetricsScore (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    code CHAR(36) NOT NULL DEFAULT UUID(),
    account_code CHAR(36) NOT NULL,
    distance TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de la distancia (0-10)',
    duration TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de la duración (0-10)',
    steps TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de los pasos (0-10)',
    calories TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de las calorías (0-10)',
    pace TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia del ritmo medio (0-10)',
    elevation TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia del desnivel (0-10)',
    heart_rate TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de la frecuencia cardíaca (0-10)',
    speed TINYINT UNSIGNED DEFAULT 0 COMMENT 'Importancia de la velocidad media (0-10)',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);