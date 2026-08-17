drop table if exists clientes cascade;
drop table if exists pedido cascade;
drop table if exists entrega cascade;
drop table if exists itens_pedido cascade;
drop table if exists produtos cascade;
drop table if exists fornecedor cascade;
drop table if exists estoque cascade;
drop table if exists transportadora cascade;
drop table if exists carga_especial cascade;
drop table if exists carga_fragil cascade;
drop table if exists carga_grande cascade;

create table clientes (
  rg varchar(12)  primary key,
  nome_cliente varchar(50) not null,
  email varchar(50) not null,
  telefone_cliente char(20) not null,
  endereco_cliente varchar(100) not null
);

create table fornecedor (
  id_fornecedor integer primary key,
  nome_fornecedor varchar(50) not null,
  telefone_fornecedor char(20) not null,
  endereço_fornecedor varchar(30) not null
);

create table estoque (
  id_estoque integer primary key,
  Quantidade_estoque integer not null,
  localização_estoque varchar(30) not null
  );

create table produtos (
  id_produto integer primary key,
  nome_produto varchar(100) not null,
  preço money not null,
  quantidade_estoque integer not null,
  id_fornecedor int,
  id_estoque int,
  foreign key (id_fornecedor) references fornecedor(id_fornecedor),
  foreign key (id_estoque) references estoque(id_estoque)
);

create table transportadora (
  id_transportadora integer primary key,
  nome_transportadora varchar(50) not null,
  telefone_transportadora char(20) not null,
  tipo_transporte varchar(30) not null
  );



create table entrega (
    id_entrega int primary key,
    data_entrega DATE,
    status_entrega VARCHAR(50),
    id_transportadora int,
    tipo_carga VARCHAR(20), 
    foreign key (ID_transportadora) references transportadora(id_transportadora)
);

create table pedido (
  id_pedido int primary key,
  data_pedido timestamp not null,
  status_pedido varchar(50) not null,
  rg varchar(12),
  id_entrega int,
  foreign key (rg) references clientes (rg),
  foreign key (id_entrega) references entrega (id_entrega)
);

create table itens_pedido (
  id_item int primary key,
  quantidade int not null,
  id_produto int,
  id_pedido int,
  foreign key (id_produto) references produtos(id_produto),
  foreign key (id_pedido) references pedido(id_pedido)
);


create table carga_fragil (
    id_entrega int primary key,
    manuseio VARCHAR(100),
    foreign key (ID_entrega) references entrega(id_entrega)
);

create table carga_especial (
    id_entrega int primary key,
    cuidado VARCHAR(100),
    foreign key (ID_entrega) references entrega(id_entrega)
);

create table carga_grande (
    id_entrega int primary key,
    pessoas_necessarias int,
    foreign key (ID_entrega) references entrega(id_entrega)
);



  
