class RelatorioDao:

    def __init__(self, connection):
        self.connection = connection
        self.help_cursor = self.connection.cursor()
        self.create_tables()
    
    def inserir_registro(self, ano, programa, cod_escola, nome_escola, nome_eex, valor_previsto):
        try:
            self.help_cursor.execute(
                '''INSERT INTO valor_investido VALUES (?, ?, ?, ?, ?, ?)''', 
                (ano, programa, cod_escola, nome_escola, nome_eex, valor_previsto))
            
        except Exception as e:
            print('\n[x] Falha ao inserir registro [x]\n')
            print('[x] Revertendo operação (rollback) %s [x]\n' % e)
            self.connection.rollback()
        else:
            self.connection.commit()
            print('\n[!] Registro inserido com sucesso [!]\n')
    def inserir_registro_escola(self, escola, codigo, cnpj, situacao_contas, suspensao_pagamento, municipio):
        try:
            self.help_cursor.execute(
                '''INSERT INTO escola VALUES (?, ?, ?, ?, ?, ?)''', 
                (escola, codigo, cnpj, situacao_contas, suspensao_pagamento, municipio))
            
        except Exception as e:
            print('\n[x] Falha ao inserir registro [x]\n')
            print('[x] Revertendo operação (rollback) %s [x]\n' % e)
            self.connection.rollback()
        else:
            self.connection.commit()
            print('\n[!] Registro inserido com sucesso [!]\n')
            
    def consultar_registros(self):
        return self.help_cursor.execute('SELECT rowid, * FROM NomeDaTabela').fetchall()

    def consultar_ultimo_rowid(self):
        return self.help_cursor.execute('SELECT MAX(rowid) FROM NomeDaTabela').fetchone()

    def remover_registro(self, rowid):
        try:
            self.help_cursor.execute("DELETE FROM NomeDaTabela WHERE rowid=?", (rowid,))
        except Exception as e:
            print('\n[x] Falha ao remover registro [x]\n')
            print('[x] Revertendo operação (rollback) %s [x]\n' % e)
            self.connection.rollback()
        else:
            self.connection.commit()
            print('\n[!] Registro removido com sucesso [!]\n')