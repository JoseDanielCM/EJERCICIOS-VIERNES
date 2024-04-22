Algoritmo retirar
	
	Definir retirar_,billetemenor,billetemayor,billetemenor2,billetemenor3,billetemenor4,repeticiones Como Real
	Definir billete1,billete2,billete3,billete4 Como Real
	Definir repeticion Como Caracter
	
	Definir prueba Como Logico
	
	Repetir
		Escribir "ingrese el valor a retirar"
		leer retirar_
		
		billete1<-10000
		billete2<-20000
		billete3<-50000
		billete4<-100000
		
		//PARA BILLETES 20 A 50//
		Si retirar_>20000 y retirar_<50000 Entonces
			billeteMenor<-billete2
			billeteMenor2<-billete1
		Fin Si
		
		//PARA BILLETES 50 A 100//
		Si retirar_>50000 y retirar_<100000 Entonces
			billeteMenor<-billete3
			billeteMenor2<-billete2
			billeteMenor3<-billete1
		Fin Si
		//PARA BILLETES +100//
		Si retirar_>100000 Entonces
			billeteMenor<-billete4
			billeteMenor2<-billete3
			billeteMenor3<-billete2
			billeteMenor4<-billete1
		Fin Si
		
		
		repeticiones<-0
		
		Si retirar_ MOD 10000 = 0 Entonces
			Segun retirar_ Hacer
				10000:
					Escribir " 1 billete de 10.000"
				20000:
					Escribir " 1 billete de 20.000"
			Fin Segun
			// 30.000-40.000//
			
			repeticiones<-0
			
			Si retirar_>=30000 Y retirar_<50000 Entonces
				//billetes de 20//
				Repetir
					repeticiones<-repeticiones+1
					retirar_<-retirar_-billeteMenor
				Hasta Que retirar_<20000
				
				Escribir repeticiones," billete de ", billeteMenor
				//billetes de 10//
				repeticiones<-0
				Si retirar_<>0 Y retirar_<billeteMenor  Entonces
					repeticiones<-repeticiones+1
					retirar_<-retirar_-billeteMenor
					Escribir repeticiones," billete de ",billeteMenor2
				Fin Si
			Fin Si
			//50.000//
			si retirar_=50000 Entonces
				Escribir "1 billete de 50.000"
			FinSi
			//60.000-90.000//_________________________________________________________________________________________
			repeticiones<-0
			Si retirar_>=60000 y retirar_<100000 Entonces
				//billetes de 50//
				Repetir
					repeticiones<-repeticiones+1
					retirar_<-retirar_-billeteMenor
				Hasta Que retirar_<billeteMenor
				
				Escribir repeticiones," billete de ", billeteMenor
				
				//billetes de 20//
				repeticiones<-0
				
				Si retirar_<>0 Y retirar_<=billeteMenor y retirar_>=billeteMenor2 Entonces
					Repetir
						repeticiones<-repeticiones+1
						retirar_<-retirar_-billeteMenor2
					Hasta Que retirar_<billeteMenor2
					Escribir repeticiones," billete de ",billeteMenor2
				Fin Si
				//billetes de 10//
				repeticiones<-0
				Si retirar_<>0 Y retirar_<billeteMenor2  Entonces
					Repetir
						repeticiones<-repeticiones+1
						retirar_<-retirar_-billeteMenor3
					Hasta Que retirar_<billeteMenor3
					Escribir repeticiones," billete de ",billeteMenor3
				Fin Si
			Fin Si
			//+100.000//__________________________________________________________________________________________
			repeticiones<-0
			Si retirar_=100000 Entonces
				Escribir "1 billete de 100000"
			Fin Si
			repeticiones<-0
			Si retirar_>100000 Entonces
				//billetes de 100//
				Repetir
					repeticiones<-repeticiones+1
					retirar_<-retirar_-billeteMenor
				Hasta Que retirar_<billeteMenor
				
				Escribir repeticiones," billete de ", billeteMenor
				
				//billetes de 50//
				repeticiones<-0
				
				Si retirar_<>0 Y retirar_<=billeteMenor y retirar_>=billeteMenor2 Entonces
					Repetir
						repeticiones<-repeticiones+1
						retirar_<-retirar_-billeteMenor2
					Hasta Que retirar_<billeteMenor2
					Escribir repeticiones," billete de ",billeteMenor2
				Fin Si
				//billetes de 20//
				repeticiones<-0
				Si retirar_<>0 Y retirar_<=billeteMenor2 Y retirar_>=billeteMenor3 Entonces
					Repetir
						repeticiones<-repeticiones+1
						retirar_<-retirar_-billeteMenor3
					Hasta Que retirar_<billeteMenor3
					Escribir repeticiones," billete de ",billeteMenor3
				Fin Si
				//billetes de 10//
				repeticiones<-0
				Si retirar_<>0 Y retirar_<=billeteMenor3 Entonces
					Repetir
						repeticiones<-repeticiones+1
						retirar_<-retirar_-billeteMenor4
					Hasta Que retirar_<billeteMenor4
					Escribir repeticiones," billete de ",billeteMenor4
				Fin Si
				repeticiones<-0
			Fin Si
			
			
		SiNo
			Escribir "error, digite otro valor a retirar, el monto debe ser multiplo de $10.000 "
		Fin Si
		
		Escribir "quieres repetir con otro valor? escribe (no) para no repetir"
		leer repeticion
		
	Hasta Que repeticion="no"
	
FinAlgoritmo
