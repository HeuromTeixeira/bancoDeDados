-- CREATE DATABASE db_pizzaria_legal;
/*CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    level INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
INSERT INTO tb_classes (nome, poder_ataque, poder_defesa) VALUES 
    ("Guerreiro", 3000, 2000),
    ("Mago", 2500, 1500),
    ("Arqueiro", 2000, 1000),
    ("Paladino", 3500, 2500),
    ("Ladino", 2000, 1000);

INSERT INTO tb_personagens (nome, level, poder_ataque, poder_defesa, classe_id) VALUES
    ("Geralt", 50, 4000, 2500, 1),
    ("Yennefer", 40, 3500, 2000, 2),
    ("Ciri", 30, 3000, 1500, 3),
    ("Triss", 20, 2500, 1000, 2),
    ("Jaskier", 15, 2000, 800, 4),
    ("Crow",30, 2500, 900, 1 ),
    ("Atlas", 30, 3000, 1500, 3),
    ("Midra", 20, 2500, 1000, 2);
    
 SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
 
 SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
 
 SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
 
SELECT*FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id = tb_classes.id

 SELECT*FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id = tb_classes.id
 WHERE tb_classes.nome = 'Arqueiro';*/
-- CREATE DATABASE db_pizzaria_legal;
/*CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomedacategoria VARCHAR(255) NOT NULL,
    descricao text    
);

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nomedapizza VARCHAR(255) NOT NULL,
    preco float,
    tamanho INT NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
INSERT INTO tb_pizzas (nomedacategoria, descricao) VALUES 
("Tradicional", "Pizzas clássicas com ingredientes tradicionais"),
("Vegetariana", "Pizzas com ingredientes vegetais"),
("Especial", "Pizzas com ingredientes especiais e exclusivos"),
("Doce", "Pizzas doces e sobremesas"),
("Especialidade da casa", "Pizzas criadas especialmente pela pizzaria");

INSERT INTO tb_categorias (nomedapizza, preco, tamanho, categoria_id) VALUES
("Margherita", 20.99, 30, 1),
("Napolitana", 25.99, 35, 1),
("Vegetariana", 22.99, 32, 2),
("Quatro Queijos", 24.99, 34, 1),
("Especial da Casa", 28.99, 38, 3),
("Pizza Doce", 15.99, 25, 4),
("Banana com Canela", 18.99, 30, 4),
("Especialidade da Casa", 32.99, 40, 5);
    
 SELECT * FROM tb_categorias WHERE preco > 25.00;
 
 SELECT * FROM tb_categorias WHERE preco BETWEEN 20.00 AND 30.00;
 
 SELECT * FROM tb_categorias WHERE nomedapizza LIKE '%M%';
 
SELECT*FROM tb_categorias INNER JOIN tb_pizzas ON tb_categorias.id = tb_pizzas.id

 SELECT*FROM tb_categorias INNER JOIN tb_pizzas ON tb_categorias.id = tb_pizzas.id
 WHERE tb_pizzas.nomedacategoria = 'Doce';*/





