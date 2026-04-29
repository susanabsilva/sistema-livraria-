-- Criar banco 
CREATE DATABASE livraria; 
USE livraria; 
 
-- ========================= 
-- TABELA USUARIOS 
-- ========================= 
CREATE TABLE usuarios ( 
   id INT AUTO_INCREMENT PRIMARY KEY, 
   username VARCHAR(50) NOT NULL UNIQUE, 
   senha VARCHAR(255) NOT NULL, 
   perfil ENUM('ADMIN', 'FUNCIONARIO') NOT NULL 
);
 
-- ========================= 
-- TABELA CLIENTES 
-- ========================= 
CREATE TABLE clientes ( 
   id INT AUTO_INCREMENT PRIMARY KEY, 
   nome VARCHAR(100) NOT NULL, 
   cpf VARCHAR(14) NOT NULL UNIQUE, 
   email VARCHAR(100) NOT NULL, 
   telefone VARCHAR(20), 
   endereco VARCHAR(150) 
);
 
-- ========================= 
-- TABELA LIVROS 
-- ========================= 
CREATE TABLE livros ( 
   id INT AUTO_INCREMENT PRIMARY KEY, 
   titulo VARCHAR(150) NOT NULL, 
   descricao TEXT, 
   preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0), 
   quantidade INT NOT NULL CHECK (quantidade >= 0) 
);
 
-- ========================= 
-- TABELA VENDAS 
-- ========================= 
CREATE TABLE vendas ( 
   id INT AUTO_INCREMENT PRIMARY KEY, 
   data DATETIME DEFAULT CURRENT_TIMESTAMP, 
   cliente_id INT NOT NULL, 
   usuario_id INT NOT NULL, 
   valor_total DECIMAL(10,2) NOT NULL, 
 
   CONSTRAINT fk_cliente 
       FOREIGN KEY (cliente_id) REFERENCES clientes(id), 
 
   CONSTRAINT fk_usuario 
       FOREIGN KEY (usuario_id) REFERENCES usuarios(id) 
);
 
-- ========================= 
-- TABELA ITENS_VENDA 
-- ========================= 
CREATE TABLE itens_venda ( 
   id INT AUTO_INCREMENT PRIMARY KEY, 
   venda_id INT NOT NULL, 
   livro_id INT NOT NULL, 
   quantidade INT NOT NULL, 
 
   CONSTRAINT fk_venda 
       FOREIGN KEY (venda_id) REFERENCES vendas(id) 
       ON DELETE CASCADE, 
 
   CONSTRAINT fk_livro 
       FOREIGN KEY (livro_id) REFERENCES livros(id) 
);