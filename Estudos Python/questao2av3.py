# -*- coding: utf-8 -*-
from tkinter import *
import sys

class Calculadora:
    def __init__(self, toplevel):

        # Janela
        toplevel.title('Calculadora de Prestações')
        toplevel.geometry("300x220")
        
        # Espaçamento
        self.frame1 = Frame(toplevel)
        self.frame1.pack()
    
        # Box 1
        self.frame2 = Frame(toplevel)
        self.frame2.pack()

        # Box 2
        self.frame3 = Frame(toplevel)
        self.frame3.pack()

        #Prestações
        self.frame4 = Frame(toplevel, pady=12)
        self.frame4.pack()

        # Quantidade
        self.frame5 = Frame(toplevel)
        self.frame5.pack()
        
        # Valor Total
        self.frame6 = Frame(toplevel)
        self.frame6.pack()

        # Cor e tamanho das letras 
        Label(self.frame1,text='', fg='black',
        font=('Verdana','10'), height=1).pack()
        fonte1=('Verdana','10')

        # Botão Calcular
        cal=Button(self.frame4,font=fonte1, text='Calcular',command=self.cal)
        cal.pack(side=LEFT)

        # Botão Guardar
        store=Button(self.frame4,font=fonte1, text='Guardar',command=self.store)
        store.pack(side=LEFT)

        # Botão Sair
        sair=Button(self.frame6, font=fonte1, text= 'Sair', command=self.sair)
        sair.pack(side=LEFT)
        
        # Box 1 para entrada de número
        Label(self.frame2,text='Prestação:', font=fonte1,width=8).pack(side=LEFT)
        self.valor1=Entry(self.frame2,width=10,font=fonte1)
        self.valor1.focus_force()
        self.valor1.pack(side=LEFT)

        # Box 2 para entrada de número
        Label(self.frame3,text='Dias:',font=fonte1,width=8).pack(side=LEFT)
        self.valor2=Entry(self.frame3,width=10,font=fonte1)
        self.valor2.pack(side=LEFT)

        # Resultado
        Label(self.frame5,text='Total= ',font=fonte1,width=8).pack(side=LEFT)
        self.msg=Label(self.frame5,width=10,font=fonte1)
        self.msg.pack(side=LEFT)

        # Quantidade
        Label(self.frame5,text='Qtd= ',font=fonte1,width=8).pack(side=LEFT)
        self.msg1=Label(self.frame5,width=10,font=fonte1)
        self.msg1.pack(side=LEFT)

    global q
    global tota
    
    q = tota = 0

    def cal(self):
        global valor
        valor1 = self.valor1.get()
        valor2 = self.valor2.get()
        valor1 = float(valor1)
        valor2 = int(valor2)
        if valor2 < 1:
                valor = valor1      
        else:
                valor = (valor1*1.03 + 0.001*valor2)                
        self.msg['text']= '%.2f' %(valor)
               
    def store(self):
        global q
        global tota
        q+=1
        q= int(q)
        tota= tota+q
        self.msg1['text']= '%.0f' %(q)
        self.msg['text']= '%.2f' %(tota)
    
    def sair(self):
        app.destroy()
        
app=Tk()
Calculadora(app)
app.mainloop()