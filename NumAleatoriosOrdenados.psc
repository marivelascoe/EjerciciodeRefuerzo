Funcion numOrdenados(num,ascen,descen)
	
	Escribir "Lista Original: " Sin Saltar;
	Para i=1 Hasta 10 Hacer
		num[i] = Aleatorio(1,10);
		ascen[i] = num[i];
		descen[i] = num[i];
		Escribir Sin Saltar num[i], ", ";
	FinPara
FinFuncion

Funcion ordenAscen(ascen)
	Escribir "Lista en orden Ascendente:" Sin Saltar;
	Para i=1 Hasta 10 Hacer
		Para j=1 Hasta 9 Hacer
			Si ascen[j] > ascen[j+1] Entonces
				aux = ascen[j];
				ascen[j] = ascen[j+1];
				ascen[j+1]=aux;
			FinSi
		FinPara
	FinPara
	Para i=1 Hasta 10 Hacer
		Escribir Sin Saltar ascen[i], ", ";
	FinPara
FinFuncion

Funcion ordenDescen(descen)
	Escribir "Lista en orden descendente: " Sin Saltar;
	Para i=1 Hasta 10 Hacer
		Para j=1 Hasta 9 Hacer
			
			Si descen[j] < descen[j+1] Entonces
				aux = descen[j];
				descen[j] =  descen[j+1];
				descen[j+1]=aux;
			FinSi
		FinPara
	FinPara
	Para i=1 Hasta 10 Hacer
		Escribir Sin Saltar descen[i], ", ";
	FinPara
FinFuncion

Algoritmo Num_Aleatorios_Ordenados
//	Escribe un programa que genere una lista de 10 números aleatorios. Luego, 
//  ordena esta lista en orden ascendente y descendente, y finalmente imprime ambas versiones.
//**Instrucciones:**
//	1. Genera una lista de 10 números aleatorios.
//	2. Ordena la lista en orden ascendente y guárdala en una variable.
//	3. Ordena la lista en orden descendente y guárdala en otra variable.
//	4. Imprime la lista original y ambas listas ordenadas.
	
	Dimension num[10], ascen[10], descen[10]
	numOrdenados(num,ascen,descen)
	Escribir " "
	ordenAscen(ascen)
	Escribir " "
	ordenDescen(descen)
	
FinAlgoritmo


	
