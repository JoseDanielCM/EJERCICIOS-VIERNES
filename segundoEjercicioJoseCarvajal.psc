Algoritmo cuadrado_Y_triangulo
	
	Definir figura,ejecutar, dibujo Como Caracter
	Definir ast Como Caracter
	Definir lado,i Como Entero

Repetir
	Escribir "quieres un cuadrado o un triangulo"
	leer figura
	
	Escribir "quieres que la figura sea de un lado que? (natural)"
	leer lado
Segun figura Hacer
	"cuadrado":
		ast<-"* "	
		Para i<-1 Hasta lado-1 Con Paso 1 Hacer
			ast<-"* "+ast
		Fin Para
		Para i<-1 Hasta lado Con Paso 1 Hacer
			Escribir ast
		Fin Para
	"triangulo":
		ast<-"*"	
		Para i<-1 Hasta lado Con Paso 1 Hacer
			dibujo<-ast
			Escribir dibujo
			ast<-"*"+ast
		Fin Para
	De Otro Modo:
		Escribir "debes ingresar una figura valida"
Fin Segun
Escribir "___________________________________________________________"
Escribir "deseas ejecutar denuevo? (no) para no ejecutar denuevo"
leer ejecutar

Hasta Que ejecutar="no"
	
FinAlgoritmo
