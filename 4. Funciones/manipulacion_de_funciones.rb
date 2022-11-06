# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 4.2.1 Declaración y uso de funciones
def sort(set_of_items)
  length = set_of_items.length - 2
  for i in 0..length
    j = i + 1
    for j in j..(length + 1)
      if set_of_items[i] > set_of_items[j]
        auxiliar = set_of_items[i]
        set_of_items[i] = set_of_items[j]
        set_of_items[j] = auxiliar
      end
    end
  end
  print set_of_items
end

sort([6,5,4,3,2,1])
sort([456,643,887,362,7378,589957,4,34557684,672,1])
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\