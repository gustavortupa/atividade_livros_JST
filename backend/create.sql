create table tb_livro (id int8 generated by default as identity, count int4, image varchar(255), score float8, title varchar(255), primary key (id));
create table tb_score (value float8, livro_id int8 not null, leitor_id int8 not null, primary key (livro_id, leitor_id));
create table tb_leitor (id int8 generated by default as identity, email varchar(255), primary key (id));
alter table if exists tb_score add constraint FK23yhb6qop0f6hnb72hcorm3cv foreign key (livro_id) references tb_livro;
alter table if exists tb_score add constraint FKl8lgmbrjoav0thqqtqx6vrr4k foreign key (leitor_id) references tb_leitor;

INSERT INTO tb_leitor(email) VALUES ('gustavo@gmail.com');
INSERT INTO tb_leitor(email) VALUES ('roberta@gmail.com');
INSERT INTO tb_leitor(email) VALUES ('daniel@gmail.com');
INSERT INTO tb_leitor(email) VALUES ('deborah@gmail.com');

INSERT INTO tb_livro(score, count, title, image) VALUES (5, 2, 'The Witcher - O Último Desejo', 'https://images-na.ssl-images-amazon.com/images/I/61N2ZCfEB4L.jpg');
INSERT INTO tb_livro(score, count, title, image) VALUES (3.8, 3, 'Harry Potter - A pedra filosofal', 'https://images-na.ssl-images-amazon.com/images/I/81ibfYk4qmL.jpg');
INSERT INTO tb_livro(score, count, title, image) VALUES (0, 0, 'Harry Potter - A camara secreta', 'https://images-na.ssl-images-amazon.com/images/I/81jbivNEVML.jpg');
INSERT INTO tb_livro(score, count, title, image) VALUES (3, 1, 'Harry Potter e o prisioneiro de Azkaban', 'https://images-na.ssl-images-amazon.com/images/I/81u+ljPVifL.jpg');
INSERT INTO tb_livro(score, count, title, image) VALUES (0, 0, 'As primeiras aventuras de Lupin - O ladrão de casaca', 'https://m.media-amazon.com/images/I/51oKfp5K4YL.jpg');
INSERT INTO tb_livro(score, count, title, image) VALUES (0, 0, 'Verdades difíceis de engolir', 'https://images-americanas.b2w.io/produtos/2188405578/imagens/livro-verdades-dificeis-de-engolir-um-romance/2188405578_1_large.jpg');

INSERT INTO tb_score(livro_id, leitor_id, value) VALUES (1, 1, 5.0);
INSERT INTO tb_score(livro_id, leitor_id, value) VALUES (1, 2, 4.0);
INSERT INTO tb_score(livro_id, leitor_id, value) VALUES (2, 1, 3.0);
INSERT INTO tb_score(livro_id, leitor_id, value) VALUES (2, 2, 3.0);
INSERT INTO tb_score(livro_id, leitor_id, value) VALUES (2, 3, 4.0);
INSERT INTO tb_score(livro_id, leitor_id, value) VALUES (4, 1, 6.0);