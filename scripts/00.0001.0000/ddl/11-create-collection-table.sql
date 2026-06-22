CREATE TABLE IF NOT EXISTS Collection (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    code CHAR(36) NOT NULL DEFAULT (UUID()),
    account_code CHAR(36) NOT NULL, -- Same code as the user account
    name VARCHAR(100) NOT NULL,
    is_default BOOLEAN DEFAULT FALSE, -- TRUE for the protected "Favoritos" collection
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    UNIQUE KEY uq_collection_code (code),
    UNIQUE KEY uq_collection_account_name (account_code, name)
);
