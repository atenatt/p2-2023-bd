CREATE DATABASE games;

USE games;

CREATE TABLE jogos (
  id INT AUTO_INCREMENT NOT NULL,
  titulo VARCHAR(255) NOT NULL,
  competitivo BIT NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE categorias (
  id INT AUTO_INCREMENT NOT NULL,
  nome VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE jogos_categorias (
  jogo_id INT NOT NULL,
  categoria_id INT NOT NULL,
  PRIMARY KEY (jogo_id, categoria_id),
  FOREIGN KEY (jogo_id) REFERENCES jogos (id),
  FOREIGN KEY (categoria_id) REFERENCES categorias (id)
);

CREATE TABLE plataforma (
  id INT AUTO_INCREMENT NOT NULL,
  nome VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE jogos_plataformas (
  jogo_id INT NOT NULL,
  plataforma_id INT NOT NULL,
  PRIMARY KEY (jogo_id, plataforma_id),
  FOREIGN KEY (jogo_id) REFERENCES jogos (id),
  FOREIGN KEY (plataforma_id) REFERENCES plataforma (id)
);