-- Procedures
use Biblioteca;

-- Insert
delimiter $
create procedure as Adicionar_Cliente(id_c int, id_m int, id_l int, nome varchar(200),
CPF int(11), telefone int(10), genero enum('F','M'))
begin
insert clientes values
(id_c,id_m,id_l,nome,CPF,telefone,genero),
end $
delimiter ;

delimiter $
create procedure as Adicionar_Livro(id_l int, id_c int, titulo varchar(200),
no_p int, ISBN int)
begin
insert livros values
(id_l,id_c,titulo,no_p,ISBN)
end $
delimiter ;

delimiter $
create procedure as Adicionar_Categoria(id_c int, tipo varchar(200))
begin
insert categorias values
(id_c,tipo)
end $
delimiter ;

delimiter $
create procedure as Adicionar_Emprestimo(id_emprestimo int, id_cliente int not null,
id_livro int)
begin
insert emprestimo values
(id_emprestimo, id_cliente, id_livro, data_emprestimo, data_revolucao)
end $
delimiter ;

delimiter $
create procedure as Adicionar_Multa(id_multa int, id_emprestimo int, id_cliente int, valor int, tipo varchar(200))
begin
insert multa values
(id_multa, id_emprestimo, id_cliente, valor, tipo)
end $
delimiter ;

delimiter $
create procedure as Adicionar_autores(id_autor int, editora varchar(200) , nome varchar(200))
begin
insert autores values
(id_autor, editora, nome)
end $
delimiter ;

delimiter $
create procedure as Adicionar_livro_categoria(
id_categoria_livro int,
id_livro int,
id_categoria int)
begin
insert livro_categoria values
(id_categoria_livro, id_livro, id_categoria)
end $
delimiter ;

delimiter $
create procedure as Adicionar_livro_autor(
id_livro_cliente int, id_livro int, id_categoria int)
begin
insert livro_autor VALUES
(id_categoria_livro, id_livro, id_categoria)
end $
delimiter ;

-- Update
delimiter $
create procedure as Update_autores(id_autor int, editora varchar(200) , nome varchar(200))
BEGIN
UPDATE autores
set editora = editora, nome = nome
where id_autor = id_autor
set 
delimiter ;



-- Delete