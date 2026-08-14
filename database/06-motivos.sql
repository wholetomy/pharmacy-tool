CREATE TABLE Motivos (
    cod_motivo INT PRIMARY KEY AUTO_INCREMENT,
    nome_motivo VARCHAR(255) UNIQUE NOT NULL,
    cod_pais INT NOT NULL,
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cod_pais) REFERENCES Paises(cod_pais)
);

CREATE TABLE Motivos_Cancelamentos (
    cod_motivo_cancelamento INT PRIMARY KEY AUTO_INCREMENT,
    motivo_english VARCHAR(255) UNIQUE NOT NULL,
    motivo_spanish VARCHAR(255) UNIQUE NOT NULL,
    ativo ENUM('Y','N') DEFAULT 'Y',
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP
);