import sqlite3

class DBConnection:
    def __init__(self):
        self.connection = sqlite3.connect('db.sqlite3')
        self.help_cursor = self.connection.cursor()
        self.create_tables()

    def create_tables(self):
        self.create_table_entidade_executora()
        self.create_table_valor_investido()
        self.create_table_local()
        self.create_table_escola()

    def create_table_valor_investido(self):
        try:
            self.help_cursor.execute('''CREATE TABLE valor_investido` (
                `Ano` year NOT NULL,
                `Programa` varchar(10) NOT NULL,
                `Cod_escola` int NOT NULL,
                `Nome_escola` varchar(100) DEFAULT NULL,
                `Nome_EEx` varchar(100) DEFAULT NULL,
                `Valor_Previsto` decimal(10,2) NOT NULL,
                PRIMARY KEY (`Ano`,`Programa`,`Cod_escola`),
                KEY `eex_idx` (`Nome_EEx`),
                KEY `escola_idx` (`Cod_escola`),
                CONSTRAINT `eex` FOREIGN KEY (`Nome_EEx`) REFERENCES `entidade_executora` (`EEX`)
                    )''')
            

        except Exception as e:
            print('[x] Falha ao criar tabela: %s [x]' % e)
        else:
            print('\n[!] Tabela criada com sucesso [!]\n')

    def create_table_escola(self):
        try:
            self.help_cursor.execute('''CREATE TABLE `escola` (
            `Escola` varchar(100) NOT NULL,
            `Codigo` int NOT NULL,
            `CNPJ` varchar(20) DEFAULT NULL,
            `Situacao_contas` varchar(15) DEFAULT NULL,
            `Suspensao_pagamento` varchar(3) DEFAULT NULL,
            `Municipio` varchar(50) NOT NULL,
            PRIMARY KEY (`Codigo`),
            KEY `Nome_Municipio_idx` (`Municipio`),
            CONSTRAINT `Nome_Municipio` FOREIGN KEY (`Municipio`) REFERENCES `local` (`Nome_Municipio`)
            )''')
        except Exception as e:
            print('[x] Falha ao criar tabela: %s [x]' % e)
        else:
            print('\n[!] Tabela criada com sucesso [!]\n')

    def create_table_entidade_executora(self):
        try:
            self.help_cursor.execute('''CREATE TABLE `entidade_executora` (
            `EEX` varchar(100) NOT NULL,
            `CNPJ_EEX` varchar(20) NOT NULL,
            `SituacaoEEX` varchar(20) DEFAULT NULL,
            `Suspensao_pagamentoEEX` varchar(3) DEFAULT NULL,
            PRIMARY KEY (`EEX`,`CNPJ_EEX`)
            )''')
        except Exception as e:
            print('[x] Falha ao criar tabela: %s [x]' % e)
        else:
            print('\n[!] Tabela criada com sucesso [!]\n')

    def create_table_local(self):
        try:
            self.help_cursor.execute('''CREATE TABLE `local` (
            `UF` varchar(2) NOT NULL,
            `Regiao` varchar(20) DEFAULT NULL,
            `Nome_Municipio` varchar(50) NOT NULL,
            PRIMARY KEY (`UF`,`Nome_Municipio`),
            KEY `Nome_Municipio_idx` (`Nome_Municipio`)
            )''')
            self.help_cursor.execute('''INSERT INTO `local` VALUES ('PE','NORDESTE','RECIFE')''')
        except Exception as e:
            print('[x] Falha ao criar tabela: %s [x]' % e)
        else:
            print('\n[!] Tabela criada com sucesso [!]\n')

   
