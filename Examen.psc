Funcion opc= menuEstudiantes
	Escribir "Que desea hacer"
	
	Escribir"1. Ingresar a los estudiantes"
	Escribir"2. buscar estudinte"
	Escribir"3. definitiva del estudiante"
	Escribir"4. mostrar tabla"
	Escribir"0. Salir del programa" 
	leer opc 
	

	
	
	
FinFuncion

Funcion x= datosEstudiantes(bd,ind,cod,nom,not1,not2,not3,ina, tot)
	
	
	
	
	
	
	bd[ind, 1]= cod
	bd[ind, 2]= nom
	bd[ind, 3]= not1
	bd[ind, 4]= not2
	bd[ind, 5]= not3
	bd[ind, 6]= ina
	bd[ind, 7]= tot
	x= ind + 1
	
	
FinFuncion

Funcion buscarEstudiante(bd,ind)
	Escribir "digite el codigo del estudiante"
	leer cod
	indx = 0
	para i = 1 hasta ind -1 Hacer
		si cod = bd[i, 1] Entonces
			indx= i
		FinSi
	FinPara
	si indx = 0 Entonces
		Escribir "Estudiante no registrado"  
	sino 
		Escribir "codigo"  " " " " bd[indx, 1]
		Escribir "nombre" " " " " bd[indx, 2]
		Escribir "nota 1" " " " "  bd[indx, 3] 
		Escribir "nota 2" " " " "  bd[indx, 4] 
		Escribir "nota 3" " " " "  bd[indx, 5] 
		Escribir "inasistencias" " " " "  bd[indx, 6] 
		Escribir " " 
		Escribir "_______________________________________"
	FinSi
	
	
FinFuncion


Funcion definitivaNotas(bd,ind,not1,not2,not3,tot)
	Escribir "digite el codigo del estudiante"
	leer cod
	indx = 0
	para i = 1 hasta ind -1 Hacer
		si cod = bd[i, 1] Entonces
			indx= i
		
		FinSi
	FinPara
	si indx = 0 Entonces
		Escribir "Estudiante no registrado"  
	SiNo
		total=ConvertirANumero(not1+not2+not3)/3
		Escribir "Su total es ", total
	FinSi
	
		
	
	
	

FinFuncion


Algoritmo Examen
	terminar= Falso
	cantDatos=1
	Dimensionar datosRegistrados[cantDatos, 7]
	
	
	
Repetir
	
	
		
	opcElegida= menuEstudiantes
	segun opcElegida Hacer
		0: 
			Escribir "Programa terminado"
			terminar= no terminar
		1:
			Escribir "ingrese el codigo del estudiante"
			leer codigo 
			Escribir "ingrese el nombre del estudiante"
			leer nombre 
			Escribir "ingrese la nota 1 del estudiante"
			leer num1
			Escribir "ingrese la nota 2 del estudiante"
			leer num2
			Escribir "ingrese la nota 3  del estudiante"
			leer num3
		
			Escribir "ingrese las inasistencias del estudiante"
			leer inasistencias
			
			
			
			cantDatos = datosEstudiantes(datosRegistrados,cantDatos ,codigo,nombre,num1, num2, num3, inasistencias, total)
			
			
			Redimensionar datosRegistrados[cantDatos,7]
			
			
			
			
			
		2:
			buscarEstudiante(datosRegistrados, cantDatos)
		3:
			
			
		4:
			para i = 1 Hasta cantDatos -1 Hacer
				Escribir "codigo"  " " " " datosRegistrados[i, 1]
				Escribir "nombre"  " " " " datosRegistrados[i, 2]				
				Escribir "nota 1"  " " " " datosRegistrados[i, 3] 
				Escribir "nota 2"  " " " " datosRegistrados[i, 4]				
				Escribir "nota 3"  " " " " datosRegistrados[i, 5]
				Escribir "inasistencias"  " " " " datosRegistrados[i, 6]
				Escribir "total"  " " " " datosRegistrados[i, 7]
			FinPara
			Escribir " "
			Escribir "_____________________________________________"
			
			
			
	FinSegun
Hasta Que terminar

	
FinAlgoritmo
