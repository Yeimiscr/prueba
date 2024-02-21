## clase-04: leer/escribir conjuntos de datos
## update: 29-08-2023
## R version 4.2.3 (2023-03-15)

## limpiar entorno
rm(list=ls()) 

## instalar/llamar pacman
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # funcion skim: describe un conjunto de datos
       janitor, # contiene conjuntos de datos.
       dplyr) # renombar variables

## verificar directorio
setwd()
getwd()
list.files()
data <- import("input/poblacion magdalena.rds")
da <- import("https://www.datos.gov.co/resource/cvym-nxdk.json") ## Lo descargue de la API y debe ser en comillas de datos abiertpos 
head(da) ## primeras 10 observaciones de mi base
tail (da) ## ultimas 10 lineas 
str(da) ## me da caracteristicasa p/pales de mi base de datos, tambien si en un dataframe o que tipo
skim(data) ## Resumen de la base, las caracteristicas de las columnas, asi mismo, las caracteristicas por tipo (mnumerico y caracter)

export(da,"output/arboles.rds")
export(x=da, file="output/arboles.dta") ## esto no sale porque tiene espacio y stata no lo permite


list.files("input/", full.names = T) ## estudiar esto
archivo <- list.files("input/", full.names = T) ## estudiar esto
print(archivo)

mi_lista <- list(nombre = "Juan", edad = 30, notas = c(80, 85, 90), casado = TRUE) ## OTRO EJEMPLO
print(mi_lista[[3]])


lista <- import_list(archivos)
## 

## READ API
browseURL("https://www.datos.gov.co/Educaci-n/Resultados-nicos-Saber-Pro/u37r-hjmu")
db = import("https://www.datos.gov.co/resource/u37r-hjmu.json?estu_cod_depto_presentacion=11")
export(db,"data.xlsx")
