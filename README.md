# SENAI_Database_Biblioteca
Projeto bimestral do senai sobre criação e manejamento de databases usando projectos **conceituais**, **lógicos** e **físicos**
# Banco de Dados de Biblioteca

Este é um projeto de banco de dados para gerenciar informações de uma biblioteca, estruturado em três versões: **conceitual**, **lógico** e **físico**. A base de dados contém tabelas que armazenam dados essenciais sobre livros, clientes, empréstimos, autores e categorias. A estrutura também inclui tabelas de relacionamento para gerenciar as associações entre livros, categorias e autores.

## Estrutura do Banco de Dados

### 1. Tabelas Principais

- **Livros**: Armazena informações sobre os livros da biblioteca.
- **Clientes**: Contém dados dos clientes da biblioteca, como nome, endereço e informações de contato.
- **Multas**: Registra as multas aplicadas aos clientes devido a atrasos no empréstimo de livros.
- **Empréstimos**: Armazena informações sobre os empréstimos realizados pelos clientes, incluindo datas de retirada e devolução.
- **Autores**: Contém os dados dos autores dos livros disponíveis na biblioteca.
- **Categoria**: Armazena as categorias de livros, como Ficção, Não-ficção, História, etc.

### 2. Tabelas de Relacionamento

- **livro_categoria**: Tabela que representa a relação entre livros e categorias. Um livro pode pertencer a várias categorias e uma categoria pode ter vários livros.
  
  - **Relacionamento**: Muitos para muitos (M:N)

- **livro_autor**: Tabela que representa a relação entre livros e autores. Um livro pode ter múltiplos autores e um autor pode ter escrito vários livros.

  - **Relacionamento**: Muitos para muitos (M:N)

## Modelos do Banco de Dados

### Modelo Conceitual

O modelo conceitual descreve as entidades principais e seus relacionamentos sem se preocupar com a implementação técnica. As principais entidades incluem **Livro**, **Cliente**, **Multa**, **Empréstimo**, **Autor** e **Categoria**. O relacionamento entre estas entidades é representado sem especificar detalhes de como os dados serão armazenados.

### Modelo Lógico

O modelo lógico detalha as tabelas e os relacionamentos entre elas, considerando as chaves primárias e estrangeiras. As tabelas de relacionamento, como **livro_categoria** e **livro_autor**, são especificadas para garantir a integridade dos dados e os relacionamentos corretos entre livros, autores e categorias.

### Modelo Físico

O modelo físico é a implementação real do banco de dados, especificando os tipos de dados para cada coluna, índices, constraints e o desempenho geral do banco. Este modelo é utilizado para criar as tabelas fisicamente em um sistema de gerenciamento de banco de dados (SGBD).

## Tabelas e Descrição

| Tabela          | Descrição                                                        |
|-----------------|------------------------------------------------------------------|
| **Livros**      | Contém informações sobre os livros, como título, ano de publicação, etc. |
| **Clientes**    | Armazena informações dos clientes da biblioteca.                |
| **Multas**      | Registra as multas aplicadas aos clientes por atraso nos empréstimos. |
| **Empréstimos** | Contém informações sobre os empréstimos de livros, incluindo datas de retirada e devolução. |
| **Autores**     | Armazena os dados dos autores dos livros.                       |
| **Categoria**   | Contém as categorias dos livros (ex: Ficção, História, etc.).   |

## Relacionamentos

- **livro_categoria**: Tabela de relacionamento entre **Livros** e **Categorias**. Um livro pode ter várias categorias e uma categoria pode ser associada a vários livros.
  
  - **Relacionamento**: Muitos para muitos (M:N)

- **livro_autor**: Tabela de relacionamento entre **Livros** e **Autores**. Um livro pode ter vários autores e um autor pode ter escrito vários livros.
  
  - **Relacionamento**: Muitos para muitos (M:N)