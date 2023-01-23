CREATE DATABASE db_ecommerce
USE db_ecommerce;
CREATE TABLE tb_produtos(
    id bigint auto_increment,
	produto varchar(255) not null,
	quantidade int,
	unidademedida varchar(10) not null,
    preco decimal not null,
    PRIMARY KEY (id)
);
INSERT INTO tb_produtos(produto, quantidade, unidadedemedida, preco) 
values ("Prego", 100, "Saco", 50.00 );
INSERT INTO tb_produtos(produto, quantidade, unidadedemedida, preco)
values ("Tabua", 100, "Unidade", 15.00 );
INSERT INTO tb_produtos(produto, quantidade, unidadedemedida, preco)
values ("Cimento", 100, "Saco", 30.00 );
INSERT INTO tb_produtos(produto, quantidade, unidadedemedida, preco)
values ("Areia", 50, "MetroCubico", 150.00 );
INSERT INTO tb_produtos(produto, quantidade, unidadedemedida, preco)
values ("Pedra", 50, "MetroCubico", 200.00 );
INSERT INTO tb_produtos(nproduto, quantidade, unidadedemedida, preco)
values ("Ferro", 30, "Barra", 80.00 );
INSERT INTO tb_produtos(nproduto, quantidade, unidadedemedida, preco)
values ("Arame", 100, "Kilo", 20.00 );
INSERT INTO tb_produtos(nproduto, quantidade, unidadedemedida, preco)
values ("Cal", 200, "saco", 20.00 );
SELECT * FROM tb_produtos WHERE id = 8;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET preco = 5.00 WHERE id = 8;
