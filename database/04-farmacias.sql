CREATE TABLE Farmacias (
    cod_farmacia BIGINT PRIMARY KEY AUTO_INCREMENT,
    id_filial VARCHAR(155) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    zipcode VARCHAR(255) DEFAULT NULL,
    telefone VARCHAR(255) DEFAULT NULL,
    registro_farmacia VARCHAR(255) DEFAULT NULL,
    cod_bandeira INT NOT NULL,
    ativo ENUM('Y','N') DEFAULT 'Y' NOT NULL,
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    cod_pais INT NOT NULL,
    marca VARCHAR(255) DEFAULT NULL,
    FOREIGN KEY (cod_bandeira) REFERENCES Bandeiras(cod_bandeira),
    FOREIGN KEY (cod_pais) REFERENCES Paises(cod_pais)
);