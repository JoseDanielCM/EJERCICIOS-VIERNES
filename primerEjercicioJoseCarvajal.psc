Algoritmo primos_gemelos
	
	Definir i,num1,num2 Como Real
	
	Definir primo1,primo2 Como Logico
	
	Definir ejecutar Como Caracter
	
	Repetir
		Escribir "ingresa un numero"
		leer num1
		
		Escribir "ingresa un numero"
		leer num2
		
		
		//es primo hasta que se demuestre lo contrario//
		primo1=Verdadero
		
		Para i<-1 Hasta num1 Con Paso 1 Hacer
			Si i<>1 y i<>num1 Entonces
				Si num1 MOD i =0 Entonces
					primo1 = Falso
					i<-num1
				FinSi
			Fin Si
		Fin Para
		
		Si primo1=Verdadero Entonces
			Escribir "el número ",num1," es primo"
		SiNo
			Escribir "el número ",num1," no es primo"
		Fin Si
		
		primo2=Verdadero
		
		Para i<-1 Hasta num2 Con Paso 1 Hacer
			Si i<>1 y i<>num2 Entonces
				Si num2 MOD i =0 Entonces
					primo2 = Falso
					i<-num2
				FinSi
			Fin Si
		Fin Para
		
		
		Si primo2=Verdadero Entonces
			Escribir "el número ",num2," es primo"
			
			Si primo1=Verdadero y primo2=Verdadero y abs(num1-num2)=2 Entonces
				Escribir "además son primos gemelos!!"
			SiNo
				Escribir "no son primos gemelos :( " 
			Fin Si
			
		SiNo
			Escribir "el número ",num2," no es primo"
			Escribir "uno o ninguno son primos!"
		Fin Si
		
		Escribir "-------------------------------------------------------------------"
		
		Escribir "quieres ejecutar denuevo el programa? (no) para no ejecutar denuevo"
		leer ejecutar
		
	Hasta Que ejecutar="no"
	
	
FinAlgoritmo
