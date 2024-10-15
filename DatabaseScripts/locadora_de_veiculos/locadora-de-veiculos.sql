-- Passo 1: Criar o banco de dados (apenas execute esse script em um banco SQLite)
-- Para criar o banco, use o comando: sqlite3 dbRentalcar.db

-- Passo 2: Criar a tabela CUSTOMERS

-- 2.1 Criar a tabela CUSTOMERS
CREATE TABLE CUSTOMERS (
    ID INTEGER PRIMARY KEY,     -- Chave primária
    NAME TEXT NOT NULL,         -- Nome do cliente
    LASTNAME TEXT NOT NULL,     -- Sobrenome do cliente
    PHONE TEXT NOT NULL,        -- Telefone do cliente
    EMAIL TEXT NOT NULL,        -- Email do cliente
    ADDRESS TEXT NOT NULL,      -- Endereço do cliente
    CITY TEXT NOT NULL,         -- Cidade
    STATE TEXT NOT NULL,        -- Estado
    BIRTH_DATE DATE NOT NULL    -- Data de nascimento
);

-- 2.2 Inserir dados na tabela CUSTOMERS
INSERT INTO CUSTOMERS (ID, NAME, LASTNAME, PHONE, EMAIL, ADDRESS, CITY, STATE, BIRTH_DATE) VALUES
(1, 'Roberto', 'Silva', '(11) 964', 'roberto@gmail.com', 'Rua José, 32', 'São Roque', 'SP', '1987-04-25'),
(2, 'MARIA', 'Gomes', '(11) 974', 'maria@yahoo.com', 'Rua das Flores, 44', 'São Paulo', 'SP', '1988-03-24'),
(3, 'Renata', 'Antunes', '(11) 974', 'renata@hotmail.com', 'Rua dos Antunes, 55', 'Sorocaba', 'SP', '1970-05-01'),
(4, 'Josefa', 'Duarte', '(11) 973', 'josefa20@gmail.com', 'Rua dos Flocos, 387', 'Mairinque', 'SP', '1988-06-18'),
(5, 'André', 'Linares', '(11) 975', 'andre.lin@gmail.com', 'Rua Palmeiras, 3', 'Rio de Janeiro', 'RJ', '2000-11-04'),
(6, 'Mário', 'Santana', '(11) 974', 'mario@gmail.com', 'Rua das Rosas, 8', 'Salvador', 'BA', '1999-12-15'),
(7, 'Luis', 'Duarte', '(11) 987', 'luis@hotmail.com', 'Rua das Orquídeas, 18', 'Fortaleza', 'CE', '1985-07-06'),
(8, 'Dalva', 'Malheiros', '(11) 966', 'dalva@gmail.com', 'Rua das Nogueiras, 12', 'São Paulo', 'SP', '1956-08-03'),
(9, 'Carolina', 'Medeiros', '(11) 935', 'carol@ig.com.br', 'Rua dos Jatobás, 14', 'Cajamar', 'SP', '1974-08-21'),
(10, 'Marcos', 'Rodrigues', '(11) 975', 'marcos@uol.com.br', 'Rua das Amazonas, 89', 'Recife', 'PE', '1966-05-02');


-- Passo 3: Criar a tabela CAR_MODEL e inserir os modelos de carros

-- 3.1 Criar a tabela CAR_MODEL
CREATE TABLE CAR_MODEL (
    ID INTEGER PRIMARY KEY,       -- Chave primária
    MODEL_NAME TEXT NOT NULL      -- Nome do modelo de carro
);

-- 3.2 Inserir dados na tabela CAR_MODEL
INSERT INTO CAR_MODEL (ID, MODEL_NAME) VALUES
(1, 'Conversível'),
(2, 'Sedã'),
(3, 'Hatch'),
(4, 'Coupé'),
(5, 'Perua'),
(6, 'SUV'),
(7, 'Picape'),
(8, 'Minivan'),
(9, 'Utilitário'),
(10, 'Buggy');

-- Passo 4: Criar a tabela CAR_BRAND e inserir as marcas

-- 4.1 Criar a tabela CAR_BRAND
CREATE TABLE CAR_BRAND (
    ID INTEGER PRIMARY KEY,       -- Chave primária
    BRAND_NAME TEXT NOT NULL      -- Nome da marca
);

-- 4.2 Inserir dados na tabela CAR_BRAND
INSERT INTO CAR_BRAND (ID, BRAND_NAME) VALUES
(1, 'Chevrolet'),
(2, 'Toyota'),
(3, 'Hyundai'),
(4, 'Volkswagen'),
(5, 'Jeep'),
(6, 'Renault'),
(7, 'Honda'),
(8, 'Fiat');

-- Passo 5: Criar a tabela POSITIONS e inserir os cargos

-- 5.1 Criar a tabela POSITIONS
CREATE TABLE POSITIONS (
    ID INTEGER PRIMARY KEY,       -- Chave primária
    DESCRIPTION TEXT NOT NULL     -- Descrição do cargo
);

-- 5.2 Inserir dados na tabela POSITIONS
INSERT INTO POSITIONS (ID, DESCRIPTION) VALUES
(1, 'Gerente de vendas'),
(2, 'Gerente de compras'),
(3, 'Vendedor'),
(4, 'Mecânico'),
(5, 'Assistente Administrativo');

-- Passo 6: Criar a tabela EMPLOYEES e inserir os funcionários

-- 6.1 Criar a tabela EMPLOYEES
CREATE TABLE EMPLOYEES (
    ID INTEGER PRIMARY KEY,       -- Chave primária
    NAME TEXT NOT NULL,           -- Nome do funcionário
    PHONE TEXT NOT NULL,          -- Telefone do funcionário
    CONTRACT_DATE DATE NOT NULL,  -- Data de contratação
    POSITION_ID INTEGER,          -- ID do cargo
    FOREIGN KEY (POSITION_ID) REFERENCES POSITIONS(ID)  -- Chave estrangeira referenciando POSITIONS
);

-- 6.2 Inserir dados na tabela EMPLOYEES
INSERT INTO EMPLOYEES (ID, NAME, PHONE, CONTRACT_DATE, POSITION_ID) VALUES
(1, 'Adriana Lemes', '(11) 98789-9999', '2021-04-10', 1),
(2, 'Camila Soares', '(11) 92749-9599', '2008-03-25', 3),
(3, 'Leonardo Silva', '(11) 91449-9600', '2018-08-26', 5),
(4, 'Mayara Gomes', '(11) 92649-9601', '2016-07-18', 2),
(5, 'Matheus Alves', '(11) 92749-9602', '2015-03-04', 5),
(6, 'Aline Santos', '(11) 99789-3135', '2020-05-06', 3);

-- Passo 7: Criar a tabela CARS e inserir os automóveis

-- 7.1 Criar a tabela CARS
CREATE TABLE CARS (
    ID INTEGER PRIMARY KEY,       -- Chave primária
    NAME TEXT NOT NULL,           -- Nome do carro
    YEAR INTEGER NOT NULL,        -- Ano de fabricação
    COLOR TEXT NOT NULL,          -- Cor
    KM INTEGER NOT NULL,          -- Quilometragem
    STATUS TEXT NOT NULL,         -- Status (liberado, em manutenção, etc)
    BRAND_ID INTEGER,             -- ID da marca (chave estrangeira)
    MODEL_ID INTEGER,             -- ID do modelo (chave estrangeira)
    FOREIGN KEY (BRAND_ID) REFERENCES CAR_BRAND(ID),  -- Chave estrangeira referenciando CAR_BRAND
    FOREIGN KEY (MODEL_ID) REFERENCES CAR_MODEL(ID)   -- Chave estrangeira referenciando CAR_MODEL
);

-- 7.2 Inserir dados na tabela CARS
INSERT INTO CARS (ID, NAME, YEAR, COLOR, KM, STATUS, BRAND_ID, MODEL_ID) VALUES
(1, 'Chevrolet Onix LT', 2016, 'Preto', 8000, 'Liberado', 1, 3),
(2, 'Hyundai HB20 1.6', 2022, 'Prata', 3000, 'Em manutenção', 3, 3),
(3, 'Toyota Yaris', 2021, 'Branca', 10000, 'Liberado', 2, 3),
(4, 'Fiat Cronos', 2022, 'Preto', 2500, 'Liberado', 8, 2),
(5, 'Honda HR-V', 2018, 'Prata', 40000, 'Em manutenção', 7, 6),
(6, 'VW Amarok', 2019, 'Prata', 25000, 'Liberado', 4, 6);

-- Passo 8: Criar a tabela LOCATIONS e inserir as locações

-- 8.1 Criar a tabela LOCATIONS
CREATE TABLE LOCATIONS (
    ID INTEGER PRIMARY KEY,         -- Chave primária
    START_DATE DATE NOT NULL,       -- Data de início da locação
    END_DATE DATE NOT NULL,         -- Data de término da locação
    TOTAL INTEGER NOT NULL,         -- Total pago pela locação
    CUSTOMER_ID INTEGER,            -- ID do cliente (chave estrangeira)
    CAR_ID INTEGER,                 -- ID do carro (chave estrangeira)
    EMPLOYEE_ID INTEGER,            -- ID do funcionário (chave estrangeira)
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID),  -- Chave estrangeira referenciando CUSTOMERS
    FOREIGN KEY (CAR_ID) REFERENCES CARS(ID),            -- Chave estrangeira referenciando CARS
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(ID)   -- Chave estrangeira referenciando EMPLOYEES
);

-- 8.2 Inserir dados na tabela LOCATIONS
INSERT INTO LOCATIONS (ID, START_DATE, END_DATE, TOTAL, CUSTOMER_ID, CAR_ID, EMPLOYEE_ID) VALUES
(1, '2021-04-01', '2021-04-07', 1500, 1, 1, 2),
(2, '2022-05-20', '2022-05-30', 1800, 2, 1, 5),
(3, '2021-03-01', '2021-03-21', 2500, 5, 2, 4),
(4, '2018-02-20', '2018-03-05', 1250, 6, 4, 6),
(5, '2022-11-20', '2022-11-29', 900, 1, 5, 1),
(6, '2019-10-01', '2019-10-29', 2800, 4, 3, 6);

-- Passo 9: Editar o e-mail do cliente com nome Carolina
UPDATE CUSTOMERS
SET EMAIL = 'carolina@campuscode.com.br'
WHERE NAME = 'Carolina';

-- Passo 10: Editar a data de nascimento do cliente com nome Josefa
UPDATE CUSTOMERS
SET BIRTH_DATE = '1986-06-19'
WHERE NAME = 'Josefa';

-- Passo 11: Editar o ano do automóvel Fiat Cronos de "2022" para "2019"
UPDATE CARS
SET YEAR = 2019
WHERE NAME = 'Fiat Cronos';

-- Passo 12: Excluir o automóvel Hyundai HB20 1.6 da tabela CARS (necessário antes remover a locação do respectivo automóvel para não dar conflito com a chave estrangeira)
DELETE FROM LOCATIONS
WHERE CAR_ID = (SELECT ID FROM CARS WHERE NAME = 'Hyundai HB20 1.6');

DELETE FROM CARS
WHERE NAME = 'Hyundai HB20 1.6';

-- Passo 13: Alterar o nome da coluna “PHONE” da tabela EMPLOYEES para “PHONE_NUMBER”
ALTER TABLE EMPLOYEES
RENAME COLUMN PHONE TO PHONE_NUMBER;

-- Passo 14: Exibir nome, lastname e email dos clientes que moram no estado de SP
SELECT NAME, LASTNAME, EMAIL
FROM CUSTOMERS
WHERE STATE = 'SP';

-- Passo 15: Exibir somente os automóveis que estão com o status “Liberado”
SELECT * FROM CARS
WHERE STATUS = 'Liberado';

-- Passo 16: Exibir todos os automóveis do ano 2016
SELECT * FROM CARS
WHERE YEAR = 2016;

-- Passo 17: Exibir todos os funcionários e seus respectivos cargos
SELECT EMPLOYEES.NAME, POSITIONS.DESCRIPTION
FROM EMPLOYEES
JOIN POSITIONS ON EMPLOYEES.POSITION_ID = POSITIONS.ID;

-- Passo 18: Exibir os funcionários que realizaram mais ou igual a 2 locações
SELECT EMPLOYEES.NAME, COUNT(LOCATIONS.ID) AS TOTAL_LOCATIONS
FROM EMPLOYEES
JOIN LOCATIONS ON EMPLOYEES.ID = LOCATIONS.EMPLOYEE_ID
GROUP BY EMPLOYEES.NAME
HAVING COUNT(LOCATIONS.ID) >= 2;

-- Passo 19: Exibir os clientes que realizaram mais ou igual a 2 locações
SELECT CUSTOMERS.NAME, COUNT(LOCATIONS.ID) AS TOTAL_LOCATIONS
FROM CUSTOMERS
JOIN LOCATIONS ON CUSTOMERS.ID = LOCATIONS.CUSTOMER_ID
GROUP BY CUSTOMERS.NAME
HAVING COUNT(LOCATIONS.ID) >= 2;

-- Passo 20: Exibir todas as locações realizadas com nome do cliente, automóvel e funcionário
SELECT LOCATIONS.ID, CUSTOMERS.NAME AS CLIENT, CARS.NAME AS CAR, EMPLOYEES.NAME AS EMPLOYEE
FROM LOCATIONS
JOIN CUSTOMERS ON LOCATIONS.CUSTOMER_ID = CUSTOMERS.ID
JOIN CARS ON LOCATIONS.CAR_ID = CARS.ID
JOIN EMPLOYEES ON LOCATIONS.EMPLOYEE_ID = EMPLOYEES.ID;

-- Passo 21: Exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(*) AS TOTAL_LOCATIONS
FROM LOCATIONS;

-- Passo 22: Exibir qual foi a locação com o TOTAL com maior valor
SELECT * FROM LOCATIONS
ORDER BY TOTAL DESC
LIMIT 1;

-- Passo 23: Exibir todas as locações realizadas entre as datas “2022-05-20” e “2022-12-25”
SELECT * FROM LOCATIONS
WHERE START_DATE BETWEEN '2022-05-20' AND '2022-12-25';


