CREATE TABLE Linguagens (
    cod_linguagem INT PRIMARY KEY AUTO_INCREMENT,
    nome_linguagem VARCHAR(250) UNIQUE NOT NULL,
    ativo ENUM('Y', 'N') DEFAULT 'Y' NOT NULL
);