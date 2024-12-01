create database AulaBD;
use AulaBD;

create table Fornecedor
(cd_Fornecedor int primary key,
Produto_cd_prod int,
Nome_forn varchar(45) not null,
CNPJ int(14) not null,
Endereço int,
foreign key (Produto_cd_prod) references Produto(cd_prod));

drop table Fornecedor;

create table Produto
(cd_prod int primary key,
Nome varchar(45) not null,
Valor_uni decimal(10,2));

create table Cliente
(cd_cli int primary key,
Nome_cli varchar(45) not null,
Endereco_cli varchar(45) not null,
Telefone int(11) not null,
Email varchar(45) unique
);

create table Loja
(idLoja int primary key,
Nome varchar(45) not null,
CNPJ int(14) unique,
Endereco varchar(45) not null,
Telefone int(11));

create table Venda
(cd_venda int primary key,
Cliente_cd_cli int,
Loja_idLoja int,
Produto_cd_prod int,
Data_venda date not null,
Valor_total decimal(10,2),
foreign key (Cliente_cd_cli) references Cliente(cd_cli),
foreign key (Loja_idLoja) references Loja(idLoja),
foreign key (Produto_cd_prod) references Produto(cd_prod)
);