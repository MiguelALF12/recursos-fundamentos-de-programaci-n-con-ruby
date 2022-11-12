# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 5.2.3 Creación e inicialización de arreglos
# a = Array.new(5)
# print(a)
#
# a = []
# print(a)

a = Array.new(6)
a = [0,1,2,3,4,5]
print(a)


for number in 0..5
  a[number] = number
end
print(a)

# ================================================================
# # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
#
#
#
#
# # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# # Sección:5.2.4 Arreglos bidimensionales
# a = [[1,2,3],[4,5,6],[7,8,9]]
#
# for row in 0..a.length-1
#   print("[ ")
#   for col in 0..a.length-1
#     print(a[row][col], " ")
#   end
#   print("]")
#   puts
#
# end
#
# # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
#
#
#
# # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# # Sección:	5.4	Ejemplos del uso de Listas y arreglos
# # ================================================================
# # ---------------------Ejemplo #1
# # Problema: Generar un programa que permita revertir los elementos de una lista con:
# #             a.	El uso de un vector auxiliar.
# #             b.	Sin el uso de un vector auxiliar
#
# # Resolviendo para el caso a
# # ---------------------Opción 1
# items = [1,2,3,4,5,6]
# reversed_items = []
#
# for item in (items.length-1).downto(0)
#   reversed_items.append(items[item])
# end
# print("Lista a invertir -> #{items}\n")
# print("Lista invertida-> #{reversed_items}")
#
# # ---------------------Opción 2
# print("Lista a invertir -> #{items}\n")
# print("Lista invertida -> #{items.reverse}")
#
#
# # Resolviendo para el caso b
# items = [1,2,3,4,5,6,7,8,9,10,11]
# print("Lista a invertir -> #{items}\n")
#
# if items.length % 2 == 1
#   middle = (items.length-1)/2
#   increase = items.length
# else
#   middle = items.length/2
#   increase = items.length
# end
# for item in 0..middle-1
#   aux = items[item]
#   items[item] = items[item+increase-1]
#   items[item+increase-1] = aux
#   increase-=2
# end
#
# print("Lista invertida-> #{items}\n")
#
# # ================================================================
#
# # ================================================================
# # ---------------------Ejemplo #2
# # Problema: Generar un programa que permita codificar un mensaje de
# #           longitud cualquiera mediante los cifrados del Cesar.
#
# ALPHABET_SIZE = 26
#
# def caesar_cipher(string)
#   shiftyArray = [] #almacenará todos los cifrados calculados
#   charLine = string.chars.map(&:ord) #[101,102,...] representación ASCII  de
#   string
#
#   shift = 2
#   ALPHABET_SIZE.times do |shift| #Itera |shift|{...} el numero de veces que tiene ALPHABET_SIZE
#     shiftyArray << charLine.map do |c| #operador de asignación <<, se le asigna
#       a shiftArray la rotación de cada letra sumado con la llave o shift
#       ((c + shift) < 123 ? (c + shift) : (c + shift) - 26).chr #ademas de validar que se encuentre dentro del limite de 123 según las repsentaciones ASCII
#     end.join #retorna el nuevo texto cifrado con espacios vacíos entre cada
#     caracter
#   end
#   shiftyArray
# end
#
# puts caesar_cipher("testing")
# # ================================================================
#
# # ================================================================
# # ---------------------Ejemplo #3
# # Problema: Desarrollar un algoritmo que permita crear un cuadrado mágico
# #           (donde la suma total de la diagonal principal y secundaria, sus
# #            filas y columnas son iguales a 15)
#
# def show_square(square)
#   for row in 0..square.length-1
#     print("[ ")
#     for col in 0..square.length-1
#       print(square[row][col], " ")
#     end
#     print("]")
#     puts
#
#   end
# end
#
# def rotate(square)
#
#   rotated_square = [[],[],[]]
#   for row in 0..square.length-1
#     for col in 0..square.length-1
#       if row == col
#         rotated_square[1].append(square[row][col])
#       elsif row < col
#         rotated_square[0].append(square[row][col])
#       elsif row > col
#         rotated_square[2].append(square[row][col])
#       end
#     end
#   end
#   return rotated_square
# end
#
# def verify(square)
#   print("Analizando filas: \n")
#   for row in 0..square.length-1
#     print("Fila #{square[row]} = #{square[row].reduce :'+'}\n")
#   end
#
#   print("Analizando columnas: \n")
#   for row in 0..square.length-1
#     analyzed_space = []
#     for col in 0..square.length-1
#       analyzed_space.append(square[col][row])
#     end
#     # analyzed_space = [square[row][col] for row in 0..square.length-1 ]
#     print("columna #{analyzed_space} = #{square[row].reduce :'+'}\n")
#   end
#
#   print("Analizando diagonal primaria: \n")
#
#   analyzed_space = []
#   for row in 0..square.length-1
#     for col in 0..square.length-1
#       if row == col
#         analyzed_space.append(square[row][col])
#       end
#     end
#     # analyzed_space = [square[row][col] for row in 0..square.length-1 ]
#   end
#   print("Diagonal primaria #{analyzed_space} = #{square[row].reduce :'+'}\n")
#
#   print("Analizando diagonal secundaria: \n")
#   analyzed_space	 =	 [square[0][square.length-1],square[(square.length1)/2][(square.length-1)/2],square[square.length-1][0]]
#   print("Diagonal secundaria #{analyzed_space} = #{square[row].reduce :'+'}\n")
# end
#
# square = [[1,2,3],[4,5,6],[7,8,9]]
#
# print("Antes de cambiar esquinas \n")
# show_square(square)
#
# #Cambiando esquinas asumiendo una matriz cuadrada
# aux = square[0][0]
# square[0][0] = square[square.length-1][square.length-1]
# square[square.length-1][square.length-1] = aux
# aux = square[square.length-1][0]
# square[square.length-1][0] = square[0][square.length-1]
# square[0][square.length-1] = aux
#
# print("Luego de cambiar esquinas \n")
# show_square(square)
#
# #Rotando la matriz hacia la izquierda 45 grados aproximadamente
# print("Rotando y creando el cuadrado magico con la técnia Lo Shu\n")
# magic_square = rotate(square)
# show_square(magic_square)
#
# #Verificando resultados
# print("Verificando que si es un cuadrado magico: \n")
# verify(magic_square)
#
# # ================================================================
# # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
#