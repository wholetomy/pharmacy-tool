CREATE TABLE DePara_Dispositivos_Motivos (
    cod_depara INT PRIMARY KEY AUTO_INCREMENT,
    cod_dispositivo INT,
    cod_motivo INT,
    FOREIGN KEY (cod_dispositivo) REFERENCES Dispositivos(cod_dispositivo),
    FOREIGN KEY (cod_motivo) REFERENCES Motivos(cod_motivo)
);