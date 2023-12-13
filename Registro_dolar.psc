Algoritmo Registro_dolar
//	Este problema apareci� en el certamen recuperativo 1 del segundo semestre de 2011 en el campus Vitacura.
//	Un analista financiero lleva un registro del precio del d�lar d�a a d�a, y desea saber cu�l fue la mayor de las alzas en el precio diario a lo largo de ese per�odo.
//	Escriba un programa que pida al usuario ingresar el n�mero n de d�as, y luego el precio del d�lar para cada uno de los n d�as.
//	El programa debe entregar como salida cu�l fue la mayor de las alzas de un d�a para el otro.	
//	Si en ning�n d�a el precio subi�, la salida debe decir: No hubo alzas.
	
	Escribir "Favor ingrese el numero de dias: "
	Leer nDias 
	Dimension vDolar[nDias];
	Dimension alza[2,nDias];
	valorDolar(nDias, vDolar)
	Alzas(nDias, vDolar, alza)
	ordenado(nDias,alza)
FinAlgoritmo

Funcion valorDolar(nDias, vDolar)
	Definir Dolar Como Real
	Escribir "Favor ingresar el precio del dolar"
	Para i=1 Hasta nDias Con Paso 1 Hacer
		Escribir Sin Saltar "d�a ", i, ":";
		Leer Dolar;
		vDolar[i] = Dolar;
	FinPara
FinFuncion

Funcion Alzas(nDias, vDolar, alza)
	Para i=1 Hasta nDias-1 Con Paso 1 Hacer
		alza[1, i] = vDolar[i+1] - vDolar[i];
		alza[2, i] = i;
	FinPara
FinFuncion

Funcion ordenado(nDias,alza)
	Para i=1 Hasta nDias Hacer
		Para j=1 Hasta nDias-1 Hacer
			Si alza[1, j] < alza[1, j+1] Entonces
				aux = alza[1, j];
				alza[1,j] = alza[1, j+1];
				alza[1, j+1]=aux;
				posicion = alza[2, j];
				alza[2,j] = alza[2, j+1];
				alza[2, j+1]=posicion;
			FinSi
		FinPara
	FinPara
	Escribir "El mayor alza fue ", alza[1,1];
	si alza[1,1] == 0  Entonces
		Escribir "No hubo alzas"
	FinSi
FinFuncion


