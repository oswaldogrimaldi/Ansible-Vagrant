-- version 0.1
CREATE DATABASE IF NOT EXISTS aplicacao;

CREATE TABLE IF NOT EXISTS usuarios (
	id INT PRIMARY KEY,
	nome VARCHAR(50),
	email VARCHAR(100),
	senha CHAR(60),
	cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Ambas as senhas são um hash de 123
@usuario = SELECT id FROM usuarios WHERE id = 1;
SELECT IF(@usuario, INSERT INTO usuarios (nome, email, senha) VALUES (1, 'Paramahansa Yogananda', 'paramahansa@yogananda.in', '$2y$10$qTdhcJ8CkKztrvRhBN7EG.UB/YqfwjXpV2iKrZjvTIp2HTzqcflvi'), NULL);

@usuario = SELECT id FROM usuarios WHERE id = 1;
SELECT IF(@usuario, INSERT INTO usuarios (nome, email, senha) VALUES (2, 'Mary Shelley', 'victor@frankenstein.co.uk', '$2y$10$mKvUbxiLFx9V4WPcNT3dWehd9xJ5xyZi2wkmadK8UlJBnYrLpwAqi'), NULL);
