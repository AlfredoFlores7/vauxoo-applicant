"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Your class documentation here
    """
  lista = []
   suma = 0
   def Ingresarr(self):
       x= int (raw_input("Ingrese tamaño de La lista:"))
       for i in range(x):
           self.lista.append(int(raw_input("Ingrese Numero:")))
       for i in self.lista:
           print i
 
    
    def sum(self, num_list):
        """
        Your method documentation here
        """
        # your sum code here
	for i in self.lista:
           self.suma+= i
        print "La Suma De Los Datos Es:",self.suma

