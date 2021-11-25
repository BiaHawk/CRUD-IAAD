from tkinter import *
from tkinter import ttk
import tkinter.messagebox


class CRUDInterface:
    def __init__(self, root):
        self.root = root
        titlespace = " "
        self.root.title(102 * titlespace + "Conection")
        self.root.geometry("776x700+300+0")
        self.root.resizable(width = True, height= True)

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

        self.NomeEscola= Label(LeftFrameY, font=('Cambria', 12, 'bold'), text= 'Nome da Escola', bd=7)
        self.NomeEscola.grid(row=1, column=0, sticky=W, padx =5)
        self.CaixaNomeEscola = Entry(LeftFrameY, font=('Cambria', 12, 'bold'), bd=5, width= 44, justify= 'left')
        self.CaixaNomeEscola.grid(row=1, column=1, sticky=W, padx=5)
        
        self.CNPJEscola= Label(LeftFrameY, font=('Cambria', 12, 'bold'), text= 'CNPJ da Escola', bd=7)
        self.CNPJEscola.grid(row=2, column=0, sticky=W, padx =5)
        self.CaixaCNPJEscola = Entry(LeftFrameY, font=('Cambria', 12, 'bold'), bd=5, width= 44, justify= 'left')
        self.CaixaCNPJEscola.grid(row=2, column=1, sticky=W, padx=5)

        self.EscolaID= Label(LeftFrameY, font=('Cambria', 12, 'bold'), text= 'ID da Escola', bd=7)
        self.EscolaID.grid(row=3, column=0, sticky=W, padx =5)
        self.EscolaID= Entry(LeftFrameY, font=('Cambria', 12, 'bold'), bd=5, width= 44, justify= 'left')
        self.EscolaID.grid(row=3, column=1, sticky=W, padx=5)

        scroll_y = Scrollbar(LeftFrame, orient=VERTICAL)
        self.TableEscola = ttk.Treeview(LeftFrame, height=14, columns=('nomescola', 'cnpj', 'id','value'), yscrollcommand=scroll_y.set)
        scroll_y.pack(side = RIGHT, fill=Y)

        self.TableEscola.heading('nomescola', text='Nome da Escola')
        self.TableEscola.heading('cnpj', text= 'CNPJ da Escola')
        self.TableEscola.heading('id', text= 'ID da Escola')
        self.TableEscola.heading('value', text= 'Valor Total Previsto')
        self.TableEscola['show']='headings'

        self.TableEscola.column('nomescola', width = 100)
        self.TableEscola.column('cnpj', width= 50)
        self.TableEscola.column('id', width=80)
        self.TableEscola.column('value', width=50)
        self.TableEscola.pack(fill= BOTH, expand=1)

        self.Display = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'DISPLAY', bd=4, pady=1, padx=24, width = 8, height = 2,).grid(row=0,column =0, padx=1)
        self.Search = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'SEARCH', bd=4, pady=1, padx=24, width = 8, height = 2,).grid(row=1,column =0, padx=1)
        self.Add = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'ADD', bd=4, pady=1, padx=24, width = 8, height = 2,).grid(row=2,column =0, padx=1)
        self.Update = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'UPDATE', bd=4, pady=1, padx=24, width = 8, height = 2,).grid(row=3,column =0, padx=1)
        self.Delete = Button(RightFrameYt, font=('Cambria', 16, 'bold'), text= 'DELETE', bd=4, pady=1, padx=24, width = 8, height = 2,).grid(row=4,column =0, padx=1)
        
        


if __name__=='__main__':
    root = Tk()
    application = CRUDInterface(root)
    root.mainloop()
