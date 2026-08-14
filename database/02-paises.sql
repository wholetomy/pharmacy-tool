CREATE TABLE Paises (
    cod_pais INT PRIMARY KEY AUTO_INCREMENT,
    nome_pais VARCHAR(250) UNIQUE NOT NULL,
    ativo ENUM('Y', 'N') DEFAULT 'Y' NOT NULL,
    cod_linguagem INT NOT NULL,
    FOREIGN KEY (cod_linguagem) REFERENCES Linguagens(cod_linguagem)
);