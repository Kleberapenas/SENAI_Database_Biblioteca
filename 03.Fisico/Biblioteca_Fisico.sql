create database Biblioteca;
use Biblioteca;
-- Tabelas
create table livros (
id_livro int not null auto_increment primary key,
id_cliente int,
titulo varchar(100),
NO_pag int,
ISBN int,
foreign key (id_cliente) references clientes(id_cliente)
);
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
create table emprestimos (
id_emprestimo int not null auto_increment primary key,
id_cliente int not null,
id_livro int,
data_emprestimo date,
data_revolução date,
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_livro) references livros(id_livro)
);
create table multa (
id_multa int not null auto_increment primary key,
id_emprestimo int not null,
id_cliente int not null,
valor int not null,
tipo varchar(200) not null,
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_emprestimo) references emprestimos(id_emprestimo)
);
create table categorias (
id_categoria int not null auto_increment primary key,
tipo varchar(200)
);
create table autores (
id_autor int not null auto_increment primary key,
editora varchar(200),
nome varchar(200)
);
create table livro_categoria(
id_categoria_livro int not null auto_increment primary key,
id_livro int not null,
id_categoria int not null,
foreign key(id_livro) references livros(id_livro),
foreign key(id_categoria)references categoria(id_categoria)
);
create table livro_autor(
id_livro_cliente int not null auto_increment primary key,
id_livro int not null,
id_categoria int not null
);
-- Procedures
delimiter $
create procedure as Modificar_Cliente(fazer enum('delete','update','insert'),id_c int, id_m int, id_l int, nome varchar(200),
CPF int(11), telefone int(10), genero enum('F','M'))
begin
if(fazer=='insert', 
insert clientes values
(id_c,id_m,id_l,nome,CPF,telefone,genero),
if(fazer=='update',
))
end &
delimiter ;

delimiter $
create procedure as Modificar_Livro(id_l int, id_c int, titulo varchar(200),
no_p int, ISBN int)
begin
insert livros values
(id_l,id_c,titulo,no_p,ISBN)
end &
delimiter ;

delimiter $
create procedure as Modificar_Categoria(id_c int, tipo varchar(200))
begin
insert categorias values
(id_c,tipo)
end &
delimiter ;