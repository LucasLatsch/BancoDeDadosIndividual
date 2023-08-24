--criando o banco de dados 
create database pessoacarro2;


--criando a tabela pessoa
create table pessoa(
	prs_cd_id serial,
	prs_tx_email varchar(50),
	prs_tx_senha varchar(20),
	prs_tx_name varchar(50) not null,
	prs_tx_cpf char(14) not null,
	prs_dt_date_born date not null,
	prs_int_tel integer not null,
	fk_end_cd_id integer,
	primary key (prs_cd_id),
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
	fk_cid_cd_id integer,
	primary key (end_cd_id),
	foreign key (fk_cid_cd_id) references cidade
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

--inserindo dados
insert into carro(car_tx_brand, car_tx_model, car_tx_color, car_tx_fuel_type,
car_dt_release, car_nm_price, car_tx_plate, fk_prs_cd_id)values 
('Fiat', 'Uno', 'Branco', 'Gasolina', '12/08/2006', 15000.00, 'JUT1J57', 1),
('VolksWagen', 'Gol', 'Preto', 'Flex', '19/10/2014', 39500.00, 'QNQ3F07', 2),
('Honda', 'Civic', 'Cinza', 'Gasolina', '20/12/2018', 125000.00, 'FFT6J91', 3),
('Toyota', 'Corolla', 'Prata', 'Flex', '16/10/2009', 86000.00, 'ABC1E23', 4),
('Subaro', 'WRX', 'Azul', 'Gasolina', '29/09/2016', 125900.00, 'EFG1J60', 5);
insert into carro(car_tx_brand, car_tx_model, car_tx_color, car_tx_fuel_type,
car_dt_release, car_nm_price, car_tx_plate, fk_prs_cd_id)values 
('Fiat', 'Fiero 2000', 'Vermelho', 'Diesel', '20/06/2023', 65800.00, 'FICT999', 1),
('Fiat', 'Urbano 300', 'Azul Céu', 'Gasolina', '10/06/2023', 52500.00, 'FICT777',1),
('Fiat', 'LuxoDrive S4', 'Preto Onix', 'Híbrido - Etanol/Elétrico', '16/10/2022', 89.90000, 'FICT555',1),
('Fiat', 'Punto Easy', 'Branco Neve', 'Gasolina', '02/01/2023', 45500.00, 'FICT444',1);
insert into carro(car_tx_brand, car_tx_model, car_tx_color, car_tx_fuel_type,
car_dt_release, car_nm_price, car_tx_plate, fk_prs_cd_id)values
('Honda', 'Civic LX', 'Cinza Metálico', 'Flex - Gasolina/Etanol', '02/12/2021', 68700.00, 'FICT778',1),
('Honda', 'Fit EX', 'Azul Oceano', 'Gasolina', '21/02/2023', 57900.00,  'FICT888',2),
('Honda', 'CR-V Touring', 'Preto Pérola', 'Híbrido - Gasolina/Elétrico', '05/07/2019', 98500.00, 'FICS545',2),
('Honda', 'HR-V Sport', 'Vermelho Paixão', 'Flex - Gasolina/Etanol', '16/09/2023', 73200.00, 'FICT667',2);
insert into carro(car_tx_brand, car_tx_model, car_tx_color, car_tx_fuel_type,
car_dt_release, car_nm_price, car_tx_plate, fk_prs_cd_id)values
('Toyota', 'Hilux SR', 'Cinza Metálico', 'Diesel', '16/08/2022', 98200.00, 'FICT441',2),
('Toyota', 'Etios XS', 'Azul Metálico', 'Flex - Gasolina/Etanol', '15/02/2021', 48700.00, 'FICT331',3),
('Toyota', 'RAV4 XLE', 'Prata Lunar', 'Gasolina',  '03/08/2017', 91500.00, 'FICT231',3),
('Toyota', 'Corolla LE', 'Branco Pérola', 'Híbrido - Gasolina/Elétrico', '12/02/2021', 82900.00, 'FICT118',3);
insert into carro(car_tx_brand, car_tx_model, car_tx_color, car_tx_fuel_type,
car_dt_release, car_nm_price, car_tx_plate, fk_prs_cd_id)values
('Subaru', 'Impreza Base', 'Azul Safira', 'Gasolina', '12/05/2021', 59800.00, 'FICT559',3),
('Subaru', 'Forester Premium', ' Verde Floresta', 'Híbrido - Gasolina/Elétrico', '16/05/2022', 79900.00, 'FICT667',3),
('Subaru', 'Outback Limited', 'Prata Metálico', 'Flex - Gasolina/Etanol', '26/03/2020', 88500.00, 'FICT773',3),
('Subaru', 'WRX STI', 'Vermelho Rally', 'Gasolina', '12/12/2015', 105200.00, 'FICT884',4);
insert into carro(car_tx_brand, car_tx_model, car_tx_color, car_tx_fuel_type,
car_dt_release, car_nm_price, car_tx_plate, fk_prs_cd_id)values
('Volkswagen', 'Golf Comfortline', 'Prata Reflex', 'Flex - Gasolina/Etanol', '19/07/2018', 72400.00, 'FICT116',4),
('Volkswagen', 'Polo Highline', 'Azul Noturno', 'Gasolina', '13/06/2020', 59900.00, 'FICT226',4),
('Volkswagen', 'T-Cross Comfort', 'Vermelho Sunset', 'Híbrido - Gasolina/Elétrico', '12/02/2023', 85700.00, 'FICT123',4),
('Volkswagen','Amarok Highline', 'Cinza Indium', 'Diesel', '05/01/2023', 12030.00, 'FICT544',5);
update carro set car_tx_brand  = 'Subaru' where car_tx_brand  like 'Subaro';
update carro set car_tx_fuel_type  = 'Flex - Gasolina/Etanol' where car_cd_id = 2;
update carro set car_tx_fuel_type  = 'Flex - Gasolina/Etanol' where car_cd_id = 4;

prs_tx_cpf, prs_dt_date_born, prs_int_tel, fk_end_cd_id)values
('bello-lucas@hotmail.com', '12345', 'Lucas', '11122233344', '16/10/1996', '992716773', 1),
('RianF@hotmail.com', '54321', 'Rian', '44433322211', '20/09/1998', '992718596', 2),
('Claudia@hotmail.com', '98765', 'Claudia', '12345678999', '29/08/1970', '992666870', 3),
('Gerson@hotmail.com', '56789', 'Gerson', '11122233355', '02/12/1990', '992711234', 4),
('Felps@hotmail.com', '14789', 'Felipe', '11122233344', '20/02/1996', '992714321', 5);

insert into estado(est_tx_estado, est_tx_sigla, est_char_pais)values
('Rio de Janeiro', 'RJ', 'Brasil'),
('São Paulo', 'SP', 'Brasil'),
('Minas Gerais', 'MG', 'Brasil'),
('Bahia', 'BA', 'Brasil'),
('Espirito Santo', 'ES', 'Brasil');

insert into cidade(cid_tx_nome, fk_est_cd_id)values
('Petropolis', 1),
('Jacarei', 2),
('Juiz de Fora', 3),
('Salvador', 4),
('Vitória', 5);

insert into endereco (end_tx_rua, end_tx_bairro, end_char_cep, 
end_int_numero, fk_cid_cd_id) values
('Rua Olavo Bilac', 'Castelanea', '25640403', 852, 1),
('Parque Meia Lua', 'Jardim Alvorada', '25640402', 200, 2),
('Travessa Pedestre', 'Milho Branco', '36083255', 25, 3),
('Rua Chile', 'Centro', '25640403', 100, 4),
('Av Vitória', 'Colina', '25640400', 210, 5);

--CONSULTAS 
 
--selecionando carro pelo tipo de combustivel
select p.prs_tx_name, p.prs_tx_email, p.prs_int_tel, p.fk_end_cd_id, c.car_tx_brand,
	c.car_tx_model,	c.car_tx_color,	c.car_tx_fuel_type,	c.car_dt_release, c.car_nm_price
from pessoa p
join carro c on p.prs_cd_id = c.fk_prs_cd_id 
where c.car_tx_fuel_type like '%Gasolina%'
group by p.prs_tx_name, p.prs_tx_email, p.prs_int_tel, p.fk_end_cd_id, c.car_tx_brand,
	c.car_tx_model,	c.car_tx_color,	c.car_tx_fuel_type,	c.car_dt_release, c.car_nm_price order by p.prs_tx_name  ;
create index fueltype on carro(car_tx_fuel_type);

--selecionando carro pela cor
select c.car_tx_brand, c.car_tx_model,	c.car_tx_color,	c.car_tx_fuel_type,
c.car_dt_release, c.car_nm_price, p.prs_tx_name, p.prs_tx_email, p.prs_int_tel, p.fk_end_cd_id
from pessoa p
join carro c on p.prs_cd_id = c.fk_prs_cd_id 
where c.car_tx_color like 'Azul%'
group by c.car_tx_brand, c.car_tx_model,	c.car_tx_color,	c.car_tx_fuel_type,
	c.car_dt_release, c.car_nm_price, p.prs_tx_name, p.prs_tx_email, p.prs_int_tel, p.fk_end_cd_id order by c.car_tx_color  ;
create index cor on carro(car_tx_color);

--selecionando carro pelo fabricante
select c.car_tx_brand, c.car_tx_model,	c.car_tx_color,	c.car_tx_fuel_type,
c.car_dt_release, c.car_nm_price, p.prs_tx_name, p.prs_tx_email, p.prs_int_tel, p.fk_end_cd_id
from pessoa p
join carro c on p.prs_cd_id = c.fk_prs_cd_id 
where c.car_tx_brand = 'Subaru'
group by c.car_tx_brand, c.car_tx_model,	c.car_tx_color,	c.car_tx_fuel_type,
	c.car_dt_release, c.car_nm_price, p.prs_tx_name, p.prs_tx_email, p.prs_int_tel, p.fk_end_cd_id order by c.car_tx_brand  ;
create index brand on carro(car_tx_brand);





