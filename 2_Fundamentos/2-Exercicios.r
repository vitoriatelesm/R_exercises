# Cap 2 - Fundamento de R

#String
texto <- "Variavel string"
texto

#Converter em caracter
x = as.character(3.14)  
x

#Concatenado strings
a <- "Texto1 "
b <- "Texto2 "
paste(a,b)

#Formantando saída
sprintf("A %s é nota %d", "texto",10)

#extraindo parte da string
texto <- "isso é uma string"
substr(texto, start =2, stop = 16)


#contando o numero de caracteres
nchar(texto)

#Alterando a capitalização
tolower(texto)
toupper(texto)

#usando a biblioteca stringr
library(stringr)

#dividindo uma string em caracteres
strsplit("separando os caracteres", NULL)
strsplit("separando os caracteres", " ")

(string1 <- c("esta é a primeira parte da minha string"))
(string2 <- c("Esta é segunda parte"))

string1e2 <- str_c(c(string1,string2), sep ="")
string1e2[1]
string1e2[2]

#contar quantas vezes um caracter aparece numa string
str_count(string2, "e")

#localizar primeira e ultima posição em que aparece uma string
str_locate_all(string2, "s")

#subtituir a primeira ocorrência do carcater
str_replace(string2, "s","*") 

#subtituir todas as ocorrências do carcater
str_replace_all(string2, "s","*") 

#detectando padão nas strings
str1 <- "17 jan 2001"
str2 <- "1 jan 2001"

padrao <- "jan 20"
grepl(pattern= padrao, x = str1)
padrao <- "jan20"
grepl(pattern= padrao, x = str1)
