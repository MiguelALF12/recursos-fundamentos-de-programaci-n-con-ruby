# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 3.3.1 Ejemplos que involucren condiciones
# # ================================================================
# ---------------------Ejemplo #1
# Problema: Crear un programa con los datos que el usuario ingresa por teclado y
#           posteriormente retorna una característica del producto con su respectivo
#           precio.

print("ESTA	 ES	 LA	 LISTA	 DE
DISPONIBLES:\n\t\t
      CELULARES:\n\t\t
      1) Iphone 12 pro MAX
      2) Xiaomi RedMi Note 10 Pro
      \n
      \t\t
      TARJETAS GRÁFICAS:\n\t\t
      3) RTX 3080 ti
      4) RTX 3060
      \n
      \t\t
      BEBIDAS ENERGETICAS:\n\t\t
      5) Speed Max 350 ml
      6) MONSTER 600 ml
")
opcion = gets.chomp.to_i

case opcion
  when 1,2
    if opcion == 1
      puts "Iphone 12 pro MAX -> $4.500.000\n
            Procesador y megapixeles de camara trasera -> #{"Apple A14 Bionic"} - #{"12 MegaPixeles"}"
    elsif opcion == 2
      puts "Xiaomi RedMi Note 10 Pro -> $2.350.000\n
            Procesador y megapixeles de camara trasera -> #{"SnapDragon 720"} - #{"34 MegaPixeles"}"
    end
  when 3,4
    if opcion == 3
      puts "RTX 3080 ti -> $5.250.000\n
            VRAM y consumo/potencia (Watts) -> #{"16 GB"} - #{"350 Watts"} "
    elsif opcion == 4
      puts "RTX 3060 -> $3.150.000\n
            VRAM y consumo/potencia (Watts) -> #{"8 GB"} - #{"170 Watts"}"
    end

  when 5,6
    if opcion == 5
      puts "Speed Max 350 ml -> $3.000\n
            Azucar y cafeína -> #{"17 gramos cada porción (2 porciones)"} - #{"500 mg"}"
    elsif opcion == 6
      puts "MONSTER 600 ml -> $6.500\n
            Azucar y cafeína -> #{"34 gramos cada porción (2 y media porciones)"} - #{"1000 mg"}"
    end
end
# ================================================================
# ================================================================
# # ---------------------Ejemplo #2
# # Problema: Crear un programa que indique (usando solo condicionales),
#             cúal es el menor de 3 números

puts "Ingrese tres numeros distintos: "
numero_a = gets.chomp.to_i
numero_b = gets.chomp.to_i
numero_c = gets.chomp.to_i
print "Elija una opción:"
opcion = gets.chomp.to_i

case opcion
when 1
  puts "Método #1"
  if numero_a < numero_b
    if numero_a < numero_c
      puts "El menor numero de #{numero_a} #{numero_b} #{numero_c} es el
numero #{numero_a}"
    elsif numero_b < numero_c
      puts "El menor numero de #{numero_a} #{numero_b} #{numero_c} es el
numero #{numero_b}"
    else
      puts "El menor numero de #{numero_a} #{numero_b} #{numero_c} es el
numero #{numero_c}"
    end
  else
    if numero_b < numero_c
      puts "El menor numero de #{numero_a} #{numero_b} #{numero_c} es el
numero #{numero_b}"
    else
      puts "El menor numero de #{numero_a} #{numero_b} #{numero_c} es el
numero #{numero_c}"
    end
  end
when 2
  puts "Método #2"
  #método #2

  if numero_a < numero_b and numero_a < numero_c
    puts "El menor numero de #{numero_a} #{numero_b} #{numero_c} es el
numero #{numero_a}"
  elsif numero_b < numero_a and numero_b < numero_c
    puts "El menor numero de #{numero_a} #{numero_b} #{numero_c} es el
numero #{numero_b}"
  else
    puts "El menor numero de #{numero_a} #{numero_b} #{numero_c} es el
numero #{numero_c}"
  end
end
# ================================================================
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 3.3.2 Ejemplo que involucren iteraciones
# ================================================================
# ---------------------Ejemplo #1
# Problema: Calcular la serie de Fibonacci a partir de un límite especificado

puts "Ingrese un numero limite para calcular la serie de números Fibonacci"
limite = gets.chomp.to_i
n_menos_1 , n , suma = 0,1,1

puts "La seríe de fibonacci en un rango de [0....limite] es: "
for iteracion in 0..limite do
  print(suma, " ")
  suma = n_menos_1 + n
  n_menos_1 = n
  n = suma
end
# ================================================================

# ================================================================
# # ---------------------Ejemplo #2
# # Problema: Elaborar un programa que permita imprimir en pantalla
#             las siguientes figuras:
#            1)           *           2)  * * * * * * * * * * *
#                       * * *               * * * * * * * * *
#                     * * * * *               * * * * * * *
#                   * * * * * * *               * * * * *
#                 * * * * * * * * *               * * *
#               * * * * * * * * * * *               *

#Figura 1)

print "Digite la cantidad de nivéles que desea visualizar en la piramide: "
niveles = gets.chomp.to_i
espacios  = niveles
numero_asteriscos = 0

puts ""
for iteracion in 0..niveles do
  print(" "*espacios)
  numero_asteriscos = (2*iteracion) + 1
  for asteriscos_iteracion in 1..numero_asteriscos
    print("*")
  end
  puts ""
  espacios -= 1
end

#Figura 2)
print "Digite la cantidad de nivéles que desea visualizar en la piramide: "
niveles = gets.to_i
espacios  = 0
puts ""
for iteracion in (niveles).downto(0) do
  print(" "*espacios)

  numero_asteriscos = (2*iteracion)
  for asteriscos_iteracion in 0..(numero_asteriscos-1)
    print("*")
  end
  puts ""
  espacios += 1
end

# ================================================================
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 3.3.3 Usando iteraciones y condicionales
# ================================================================
# ---------------------Ejemplo #1
# Problema: Un programa que se ejecute “infinitamente” lanzando operaciones
#           matemáticas sencillas que el usuario pueda responder. Si este se
#           equivoca en la respuesta el programa se debe seguir ejecutando,
#           todo esto hasta recibirá una respuesta correcta.
#           Las operaciones serán suma, resta, multiplicación, división,
#           todas entre números aleatorios.

operaciones = [" + "," - "," * "," / "]

while true do
  numero_a = rand(0..100).to_s
  numero_b = rand(0..100).to_s
  operacion = rand(operaciones.length)
  calculo = numero_a + operaciones[operacion] + numero_b
  puts calculo
  print "Su respuesta -> "
  respuesta = gets.chomp.to_i

  while respuesta == 0
    respuesta = gets.chomp.to_i
  end

  case operaciones[operacion]
  when " + "
    if numero_a.to_i + numero_b.to_i == respuesta
      print "RESPUESTA CORRECTA!!!\n"
      break
    else
      print "RESPUESTA INCORRECTA, SIGUE INTENTANDO\n"
    end
  when " - "
    if numero_a.to_i - numero_b.to_i == respuesta
      print "RESPUESTA CORRECTA!!!\n"
      break
    else
      print "RESPUESTA INCORRECTA, SIGUE INTENTANDO\n"
    end
  when " * "
    if numero_a.to_i * numero_b.to_i == respuesta
      print "RESPUESTA CORRECTA!!!\n"
      break
    else
      print "RESPUESTA INCORRECTA, SIGUE INTENTANDO\n"
    end
  when " / "
    if numero_a.to_i / numero_b.to_i == respuesta
      print "RESPUESTA CORRECTA!!!\n"
      break
    else
      print "RESPUESTA INCORRECTA, SIGUE INTENTANDO\n"
    end
  end
end

# ================================================================

# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
