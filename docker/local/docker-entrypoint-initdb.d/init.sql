CREATE TABLE Books (
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       title VARCHAR(255) NOT NULL,
                       author VARCHAR(255) NOT NULL,
                       genre ENUM('Digital', 'Physical') NOT NULL DEFAULT 'Digital',
                       edition INT NOT NULL DEFAULT 1,
                       format ENUM('PDF', 'MOBI', 'EPUB', 'Audiobook') NOT NULL,
                       type ENUM('Digital', 'Physical') NOT NULL,
                       pages INT NOT NULL DEFAULT 0,
                       publication_date DATE NOT NULL
);