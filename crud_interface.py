from tkinter import *
from tkinter import ttk
import tkinter.messagebox
import pymysql

class CRUDInterface:
    def __init__(self, root):
        self.root = root
        titlespace = " "
        self.root.title(102 * titlespace + "Conection")
        self.root.geometry("776x700+300+0")
        self.root.resizable(width = True, height= True)
        #Interface Inicial
        MainFrame = Frame(self.root, bd=10, width= 770, height= 700, relief = RIDGE, bg= 'light salmon')
        MainFrame.grid()

        TitleFrame = Frame(MainFrame, bd=7, width= 770, height= 100, relief = RIDGE)
        TitleFrame.grid(row = 0, column = 0)
        TopFrameY = Frame(MainFrame, bd=5, width= 770, height= 500, relief = RIDGE)
        TopFrameY.grid(row = 1, column = 0)

        LeftFrame = Frame(TopFrameY, bd=5, width= 770, height = 400, padx =2, bg = 'light salmon', relief = RIDGE)
        LeftFrame.pack(side = LEFT)
        LeftFrameY = Frame(LeftFrame, bd=5, width = 600, height = 180, padx=12, pady=9, relief = RIDGE)
        LeftFrameY.pack(side= TOP)

        RightFrameY = Frame(TopFrameY, bd=5, width= 100, height = 400, padx =2, bg = 'light salmon', relief = RIDGE)
        RightFrameY.pack(side = RIGHT)
        RightFrameYt = Frame(RightFrameY, bd= 5, width = 90, height = 300, padx=2, pady = 2, relief = RIDGE)
        RightFrameYt.pack(side = TOP)

        self.title= Label(TitleFrame, font=('Cambria', 30, 'bold'), text= 'Implementação CRUD IAAD', bd=7)
        self.title.grid(row=0, column=0, padx=132)
        #Variaveis
        Escola = StringVar()
        EscolaID = StringVar()
        NomeEntidade = StringVar()
        ValorPrevisto = StringVar()
        
        #funções dos botões
        def Add():
            if Escola.get() == "" or EscolaID.get() == "" or NomeEntidade.get() == "" or ValorPrevisto.get() == "":
                tkinter.messagebox.showerror("Connection", "Valores não existentes no DB")
            else:
                sqlconnection = pymysql.connect(host ="localhost", user = "root", password = "", database = 'mydb')
                nav = sqlconnection.cursor()
                nav.execute("insert into valor_investido (nome_escola, cod_escola, nome_eex, valor_previsto) values(%s, %s, %s, %s)",(Escola.get(), EscolaID.get(), NomeEntidade.get(), ValorPrevisto.get()))
                sqlconnection.commit()
                sqlconnection.close()
                tkinter.messagebox.showinfo("Connection", "Sucesso")

        def showData():
            sqlconnection = pymysql.connect(host ="localhost", user = "root", password = "", database = 'mydb')
            nav = sqlconnection.cursor()
            nav.execute("select nome_escola, cod_escola, nome_eex, valor_previsto from valor_investido")
            rows = nav.fetchall()
            for row in rows:
                print(row)
                self.TableEscola.insert("",END, values=row)
            sqlconnection.commit()
            sqlconnection.close()
            tkinter.messagebox.showinfo("Display", "Sucesso")

        def Search():
            sqlconnection = pymysql.connect(host ="", user = "", password = "", database = 'mydb')
            nav = sqlconnection.cursor()
            nav.execute("select nome_escola, cod_escola, nome_eex, valor_previsto from mydb.valor_investido where cod_escola = %s", EscolaID.get())
            rows = nav.fetchall()
            for row in rows:
                print(row)
                self.TableEscola.insert("",END, values=row)
            sqlconnection.commit()
            sqlconnection.close()

        def Delete():
            sqlconnection = pymysql.connect(host ="", user = "", password = "", database = 'mydb')
            nav = sqlconnection.cursor()
            nav.execute("delete from valor_investido where cod_escola=%s", EscolaID.get())
            sqlconnection.commit()
            sqlconnection.close()
            tkinter.messagebox.showinfo("Connection", "Sucesso na operação de Delete")
        
        def Update():
            try:
                sqlconnection = pymysql.connect(host ="", user = "", password = "", database = 'mydb')
                nav = sqlconnection.cursor()
                nav.execute("call update_escola (%s,%s)" ,(Escola.get(), EscolaID.get()))
                sqlconnection.commit()
                sqlconnection.close()
                tkinter.messagebox.showinfo("Connection", "Sucesso na operação de Update")
            except Exception as e:
                print("Exeception occured:{}".format(e))

                            
        #Layout das entradas
        self.NomeEscola= Label(LeftFrameY, font=('Cambria', 12, 'bold'), text= 'Nome da Escola', bd=7)
        self.NomeEscola.grid(row=0, column=0, sticky=W, padx =5)
        self.CaixaNomeEscola = Entry(LeftFrameY, font=('Cambria', 12, 'bold'), bd=5, width= 44, justify= 'left', textvariable= Escola)
        self.CaixaNomeEscola.grid(row=0, column=1, sticky=W, padx=5)
        
        self.EscolaID= Label(LeftFrameY, font=('Cambria', 12, 'bold'), text= 'ID da Escola', bd=7)
        self.EscolaID.grid(row=1, column=0, sticky=W, padx =5)
        self.EscolaID= Entry(LeftFrameY, font=('Cambria', 12, 'bold'), bd=5, width= 44, justify= 'left', textvariable=EscolaID)
        self.EscolaID.grid(row=1, column=1, sticky=W, padx=5)

        
        self.NomeEntidade= Label(LeftFrameY, font=('Cambria', 12, 'bold'), text= 'Nome Entidade Executora', bd=7)
        self.NomeEntidade.grid(row=2, column=0, sticky=W, padx =5)
        self.CaixaNomeEntidade = Entry(LeftFrameY, font=('Cambria', 12, 'bold'), bd=5, width= 44, justify= 'left', textvariable=NomeEntidade)
        self.CaixaNomeEntidade.grid(row=2, column=1, sticky=W, padx=5)

        self.ValorPrevisto= Label(LeftFrameY, font=('Cambria', 12, 'bold'), text= 'Valor Previsto', bd=7)
        self.ValorPrevisto.grid(row=3, column=0, sticky=W, padx =5)
        self.ValorPrevisto= Entry(LeftFrameY, font=('Cambria', 12, 'bold'), bd=5, width= 44, justify= 'left', textvariable= ValorPrevisto)
        self.ValorPrevisto.grid(row=3, column=1, sticky=W, padx=5)
        
        
        #Table View
        scroll_y = Scrollbar(LeftFrame, orient=VERTICAL)
        self.TableEscola = ttk.Treeview(LeftFrame, height=14, columns=('escola','id', 'entidade','value'), yscrollcommand=scroll_y.set)
        scroll_y.pack(side = RIGHT, fill=Y)

        self.TableEscola.heading('escola', text='Nome da Escola')
        self.TableEscola.heading('id', text= 'ID da Escola')
        self.TableEscola.heading('entidade', text= 'Entidade Executora')
        self.TableEscola.heading('value', text= 'Valor Total Previsto')
        self.TableEscola['show']='headings'

        self.TableEscola.column('escola', width = 100)
        self.TableEscola.column('entidade', width= 60)
        self.TableEscola.column('id', width=70)
        self.TableEscola.column('value', width=70)
        self.TableEscola.pack(fill= BOTH, expand=1)

        
        #Botões
        self.Display = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'DISPLAY', bd=4, pady=1, padx=24, width = 8, height = 2, command = showData).grid(row=0,column =0, padx=1)
        self.Search = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'SEARCH', bd=4, pady=1, padx=24, width = 8, height = 2, command= Search).grid(row=1,column =0, padx=1)
        self.Add = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'ADD', bd=4, pady=1, padx=24, width = 8, height = 2, command=Add).grid(row=2,column =0, padx=1)
        self.Update = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'UPDATE', bd=4, pady=1, padx=24, width = 8, height = 2, command= Update).grid(row=3,column =0, padx=1)
        self.Delete = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'DELETE', bd=4, pady=1, padx=24, width = 8, height = 2, command=Delete).grid(row=4,column =0, padx=1)


if __name__=='__main__':
    root = Tk()
    application = CRUDInterface(root)
    root.mainloop()
