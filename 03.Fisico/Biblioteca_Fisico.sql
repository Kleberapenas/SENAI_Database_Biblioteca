create database Biblioteca;
use Biblioteca;
-- Tabelas

-- Livros
create table livros (
id_livro int not null auto_increment primary key,
id_cliente int,
titulo varchar(100),
NO_pag int,
ISBN int,
foreign key (id_cliente) references clientes(id_cliente)
);

-- Clientes
create table clientes (
id_cliente int not null auto_increment primary key,
id_multa int,
id_livro int,
nome varchar(200),
CPF int(11) not null,
telefone int(10),
genero enum('M','F'),
foreign key (id_cliente) references livro(id_livro),
foreign key (id_multa) references multa(id_multa)
);

-- Emprestimo
create table emprestimos (
id_emprestimo int not null auto_increment primary key,
id_cliente int not null,
id_livro int,
data_emprestimo date,
data_revolucao date,
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_livro) references livros(id_livro)
);

-- Multa
create table multa (
id_multa int not null auto_increment primary key,
id_emprestimo int not null,
id_cliente int not null,
valor int not null,
tipo varchar(200) not null,
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_emprestimo) references emprestimos(id_emprestimo)
);

-- Categorias
create table categorias (
id_categoria int not null auto_increment primary key,
tipo varchar(200)
);

-- Autores
create table autores (
id_autor int not null auto_increment primary key,
editora varchar(200),
nome varchar(200)
);

-- Livro Categoria
create table livro_categoria(
id_categoria_livro int not null auto_increment primary key,
id_livro int not null,
id_categoria int not null,
foreign key(id_livro) references livros(id_livro),
foreign key(id_categoria)references categoria(id_categoria)
);

-- Livro Autor
create table livro_autor(
id_livro_cliente int not null auto_increment primary key,
id_livro int not null,
id_categoria int not null
);

-- Procedures

-- Insert
delimiter $
create procedure as Adicionar_Cliente(id_c int, id_m int, id_l int, nome varchar(200),
CPF int(11), telefone int(10), genero enum('F','M'))
begin
insert clientes values
(id_c,id_m,id_l,nome,CPF,telefone,genero),
end &
delimiter ;

delimiter $
create procedure as Adicionar_Livro(id_l int, id_c int, titulo varchar(200),
no_p int, ISBN int)
begin
insert livros values
(id_l,id_c,titulo,no_p,ISBN)
end &
delimiter ;

delimiter $
create procedure as Adicionar_Categoria(id_c int, tipo varchar(200))
begin
insert categorias values
(id_c,tipo)
end &
delimiter ;

delimiter $
create procedure as Adicionar_Emprestimo(id_emprestimo int, id_cliente int not null,
id_livro int)
begin
insert categorias values
(id_emprestimo, id_cliente, id_livro, data_emprestimo, data_revolucao)
end &
delimiter ;

delimiter $
create procedure as Adicionar_Multa(id_multa int, id_emprestimo int, id_cliente int, valor int, tipo varchar(200))
begin
insert categorias values
(id_multa, id_emprestimo, id_cliente, valor, tipo)
end &
delimiter ;

delimiter $
create procedure as Adicionar_categorias(id_categoria int, tipo varchar(200))
begin
insert categorias values
(id_categoria, tipo)
end &
delimiter ;

delimiter $
create procedure as Adicionar_autores(id_categoria int, tipo varchar(200))
begin
insert categorias values
(id_categoria, tipo)
end &
delimiter ;

-- Update

-- Delete