# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 2.1.2 Operadores lógicos
print("NOT: < true -> (Not) -> #{!true} > || < false -> (Not) -> #{not false} >\n")
print("AND: < true (And) false -> #{true && false} > || < false (And) false -> #{false and false} >\n")
print("OR: < true (or) false -> #{true || false} > || < false (And) false -> #{false or false}>\n")
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 2.3 Variables
a = 90
b = 50
suma = a + b
printf("%d + %d = %d\n",a,b,suma)
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 2.3.1 Clasificación de las variables según su alcance
# ================================================================
# ---------------------Parte 1
b = "variable local que solo se puede usar por fuera de la función"
def something()
  a = "variable local que solo se puede usar dentro de la función"
  return a,b
end
puts something()
# ================================================================

# ================================================================
# ---------------------Parte 2
$b = "variable local que solo se puede usar por fuera de la función"
def something()
  a = "variable local que solo se puede usar dentro de la función"
  return a,$b
end
puts something()
# ================================================================
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 	2.5	Imprimir y obtener información por pantalla
# ================================================================
# ---------------------Parte 1
puts "Cuál es su edad? -> "
age = gets
puts "Su edad es #{age}"
# ================================================================
#
# ================================================================
# ---------------------Parte 2
print "Cual es su edad? -> "
age = gets.chomp
print("Su edad es " + age + " años")
# ================================================================
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 	2.6	Ejemplos de lo visto en el capítulo
# ================================================================
# ---------------------Ejemplo #1 - Números enteros y flotantes
#Enteros y flotantes
puts "Ingrese dos numeros a y b "
number_a = gets.chomp.to_i
number_b = gets.chomp.to_i

print("Los números ingresados son \n\t
      #{number_a} es de tipo #{number_a.class} \n\t
      #{number_b} es de tipo #{number_b.class}\n\n")

puts "Algunas operaciones entre ellos son:"
puts "Suma -> a + b = #{number_a + number_b}"
puts "Resta -> a - b = #{number_a - number_b}"
puts "Multiplicación -> a * b = #{number_a * number_b}"
puts "División -> a / b = #{number_a / number_b}"

puts "\n\nde igual forma las operaciones entre flotantes: "

number_a = gets.chomp.to_f
number_b = gets.chomp.to_f
print("Los números ingresados son \n\t
      #{number_a} es de tipo #{number_a.class} \n\t
      #{number_b} es de tipo #{number_b.class}\n\n")
puts "Suma -> a + b = #{number_a + number_b}"
puts "Resta -> a - b = #{number_a - number_b}"
puts "Multiplicación -> a * b  = #{number_a * number_b}"
puts "División -> a / b = #{number_a / number_b}"
# ================================================================

# ================================================================
# ---------------------Ejemplo #2 - Manejo de expresiones matemáticas por medio de la jerarquía de operandos
# evaluar expresiones matemáticas y jerarquía de operandos
puts "Usted va a evaluar la siguiente expresión a partir del reemplazo con datos propocionados por usted:"
puts "expresión -> (number_a + number_c) * number_b / number_c + ((number_c-number_a)*(number_d/(number_a)))"
puts "A continuación ingrese un valor para cada una de las variables que componen la expresión anterior"
print("number_a: ")
number_a = gets.chomp.to_i
print("number_b: ")
number_b = gets.chomp.to_i
print("number_c: ")
number_c = gets.chomp.to_i
print("number_d: ")
number_d = gets.chomp.to_i

polinomio_arbitrario = (number_a + number_c) * number_b / number_c + ((number_c-number_a)*(number_d/number_a))

puts "La respuesta a la expresión anterior con los valores suministrados es " + polinomio_arbitrario.to_s()
# ================================================================
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
