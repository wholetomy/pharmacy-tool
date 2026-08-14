CREATE TABLE Tipos_Dispositivos (
    cod_tipo_dispositivo INT PRIMARY KEY AUTO_INCREMENT,
    nome_tipo_dispositivo VARCHAR(255) UNIQUE NOT NULL,
    ativo ENUM('Y','N') DEFAULT 'Y',
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Dispositivos (
  cod_dispositivo INT PRIMARY KEY AUTO_INCREMENT,
  nome_dispositivo VARCHAR(255) UNIQUE NOT NULL,
  url_imagem VARCHAR(255) NOT NULL,
  cod_tipo_dispositivo INT NOT NULL,
  ordem INT DEFAULT NULL,
  cod_pais INT NOT NULL,
  data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
  data_atualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  ativo ENUM('Y','N') DEFAULT 'Y',
  url_imagem_caixa VARCHAR(255) NOT NULL,
  FOREIGN KEY (cod_tipo_dispositivo) REFERENCES Tipos_Dispositivos(cod_tipo_dispositivo),
  FOREIGN KEY (cod_pais) REFERENCES Paises(cod_pais)
);