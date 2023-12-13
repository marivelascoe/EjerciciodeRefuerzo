Algoritmo Maquina_De_Alimentos
//	Este problema apareció en el certamen recuperativo 1 del segundo semestre de 2011 en el campus Vitacura.
//	Una máquina de alimentos tiene productos de tres tipos, A, B y C, que valen respectivamente $270, $340 y $390.
//  La máquina acepta y da de vuelto monedas de $10, $50 y $100.
//	Escriba un programa que pida al usuario elegir el producto y luego le pida ingresar las monedas hasta alcanzar el monto a pagar.
//  Si el monto ingresado es mayor que el precio del producto, el programa debe entregar las monedas de vuelto, una por una.
	Escribir "* * * * * * * * Maquina de Alimentos * * * * * * * *"
	Escribir " 1 - Productos A.......................$ 270 "
	Escribir " 2 - Productos B.......................$ 340 "
	Escribir " 3 - Productos C.......................$ 390 "
	Escribir ""
	Escribir "Escoja que producto le gustaria"
	a = 270
	b = 340
	c = 390 
	leer opc
	Limpiar Pantalla

	Segun opc Hacer
		"a":  
			Escribir "Eligio producto A por valor de $270"
			Escribir "RECUERDE: Esta maquina solo recibe monedas de $10, $50 o $100 pesos"
			Escribir "Favor ingresar el dinero"
			superavit(a)
			
		"b":
			Escribir "Eligio producto B por valor de $340"
			Escribir "RECUERDE: Esta maquina solo recibe monedas de $10, $50 o $100 pesos"
			Escribir "Favor ingresar el dinero"
			superavit(b)
			
		"c": 
			Escribir "Eligio producto C por valor de $390"
			Escribir "RECUERDE: Esta maquina solo recibe monedas de $10, $50 o $100 pesos"
			Escribir "Favor ingresar el dinero"
			superavit(c)
			
		De Otro Modo:
			Escribir "No ha seleccionado una opcion valida"
	Fin Segun
		
	superavit(i)
	
FinAlgoritmo	

funcion superavit(i)
	mientras moneda <= i
		leer valorMoneda
		Si valorMoneda = 10 | valorMoneda = 50 | valorMoneda = 100 Entonces
			moneda = moneda + valorMoneda
		SiNo
			Escribir "EL valor de la moneda no pudo ser leido intentelo de nuevo."
		FinSi
	FinMientras
	cambio = Moneda - i
	mientras cambio > 0 Hacer
		si cambio >= 50 Entonces
			Escribir "Su cambio es: $50"
			cambio = cambio - 50
		FinSi
		
		si cambio < 50 Entonces
			Escribir "Su cambio es $10"
			cambio = cambio - 10 
		FinSi
	FinMientras
FinFuncion
