--criando o banco de dados 
create database pessoacarro;

--criando a tabela usuario
create table usuario(
	user_cd_id serial,
	user_tx_nome varchar(50),
	user_tx_cpf varchar(11),
	user_tx_email varchar(50),
	user_tx_senha varchar(20),
	primary key (user_cd_id)
);

--criando a tabela pessoa
create table pessoa(
	prs_cd_id serial,
	prs_tx_name varchar(50) not null,
	prs_tx_cpf char(14) not null,
	prs_dt_date_born date not null,
	prs_int_tel integer not null,
	fk_user_cd_id integer,
	fk_end_cd_id integer,
	primary key (prs_cd_id),
	foreign key (fk_user_cd_id) references usuario(user_cd_id),
	foreign key (fk_end_cd_id) references endereco(end_cd_id)
);

--criando a tabela carro
create table carro(
	car_cd_id serial,
	car_tx_brand varchar(50) not null,
	car_tx_model varchar(50) not null,
	car_tx_color varchar(50) not null,
	car_tx_fuel_type varchar(50) not null,
	car_dt_release date not null,
	car_nm_price numeric(10,2) not null,
	car_tx_plate char(7) not null,
	fk_prs_cd_id integer,
	fk_user_tx_adress integer,
	primary key (car_cd_id),
	foreign key (fk_prs_cd_id) references pessoa(prs_cd_id)
);

--criando a tabela endereço
create table endereco(
	end_cd_id serial,
	end_tx_rua varchar(50),
	end_tx_bairro varchar(50),
	end_char_cep varchar(8),
	end_int_numero integer,
	fk_cid_int_cd integer,
	primary key (end_cd_id),
	foreign key (fk_cid_int_cd) references cidade
);

--criando a tabela cidade
create table cidade(
	cid_cd_id serial,
	cid_tx_nome varchar(50),
	fk_est_cd_id integer,
	primary key (cid_cd_id),
	foreign key (fk_est_cd_id) references estado
);

-- criando a tabela estado
create table estado(
	est_cd_id serial,
	est_tx_estado varchar(50),
	est_tx_sigla varchar(50),
	est_char_pais varchar(8),
	primary key (est_cd_id)
);

--consultas






-- linha para correção das tabelas
drop table estado;
drop table cidade;
drop table endereco;
drop table carro;
drop table pessoa;
drop table usuario;
