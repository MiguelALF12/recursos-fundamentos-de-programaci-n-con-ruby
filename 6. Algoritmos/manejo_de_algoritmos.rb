# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 	6.3	Pseudocódigo
def isPrime(number)
  numberOfDivisors =0
  for number_eval in 1..number+1
    if (number % number_eval) == 0
      numberOfDivisors+=1
    end
  end
  if numberOfDivisors != 2 and number != 1
    return false
  else
    return true
  end

end

numbers = Array.new(100).map{rand(1..100)}

for number in numbers
  if not isPrime(number)
    index = numbers.index(number)
    numbers[index] = 0
  end
end

for index in 0..numbers.length-1
  if numbers[index] != 0
    puts numbers[index]
  end
end

# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 6.4.1.2 Algoritmos de búsqueda no informados
# ================================================================
# ---------------------Ejemplo #1 - Algoritmos heurísticos, Greedy algortihm
# Problema: conocer el mínimo número de monedas que deben devolverse en un cambio de dinero

def minimumNumberOfCoins(coins, numberOfCoins, value)

  if (value <= 0)
    return
  end

  coins = coins.sort
  change = []
  sum = 0
  iterations = numberOfCoins - 1
  coin = 0
  while iterations >= 0 && sum < value
    coin = coins[iterations]
    while coin + sum <= value
      change.push(coin)
      sum += coin
    end

    iterations -= 1
  end

  print("\n El valor dado es ", value, ", ")


  if sum == value
    print("cambio: ", change)
    Else
    print(" No es posible otorgar un cambio total\n")
  end

end

def main()
  coins = [6, 3, 1, 4]
  numberOfCoins = coins.length
  minimumNumberOfCoins(coins, numberOfCoins, 35)
  minimumNumberOfCoins(coins, numberOfCoins, 12)
  minimumNumberOfCoins(coins, numberOfCoins, 8)
  minimumNumberOfCoins(coins, numberOfCoins, 8.5)
end

main

# ================================================================

#================================================================
# ---------------------Ejemplo #2 - Algoritmos de búsqueda secuenciales, Búsqueda binaria (binary search):

def binarySearch(elements,item)
  lower_bound = 0
  upper_bound = elements.length - 1
  number_iterations = 0

  while lower_bound <= upper_bound do
    center = ((upper_bound-lower_bound)/2)+lower_bound
    if elements[center] == item
      print("El item buscado es -> #{item} y se encuentra en la posición #{center}
            \n")
      print("item: #{item} --- vector[#{center}]: #{elements[center]}")
      print("\nNumero de iteraciones realizadas -> #{number_iterations}")
      break
    elsif item < elements[center]
      upper_bound = center - 1
    elsif item > elements[center]
      lower_bound = center + 1
    end
    number_iterations += 1
  end
end

vector = []

for position in 0..100
  vector[position] = rand(100)
end

index = rand(100)
item_to_search = vector[index]

print("El vector sin ordenar -> ", vector, "\n")
print("El vector ordenado -> ", vector.sort(), "\n")
print("El elemento a buscar es: ", item_to_search,"\n")
print("----USANDO BINARY SEARCH----\n")
print(binarySearch(vector.sort(),item_to_search))
# ================================================================
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 6.4.2.1 Counting sort
def countingSort(elements,k)
  count = Array.new(k+1).map{0}
  output = Array.new(elements.length).map{0}
  for indexi in 0..elements.length-1
    indexj = elements[indexi]
    count[indexj] += 1
  end

  for index in 1..k
    count[index] += count[index-1]
  end

  for indexi in (elements.length - 1).downto(0)
    indexj = elements[indexi]
    count[indexj] -= 1
    output[count[indexj]] = elements[indexi]
  end
  return output

end

  print("\nAntes#{[2,9,7,4,1,8,4]} y después", countingSort([2,9,7,4,1,8,4],9),
        "\n")
  print("\nAntes #{[3,44,38,5,47,15,36,26,27,2,46,4,19,50,48]} y después ", countingSort([3,44,38,5,47,15,36,26,27,2,46,4,19,50,48],50), "\n")

# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 6.4.2.2 merge sort

def merge_sort(array)
  if array.length <= 1
    return array
  end

  array_size = array.length
  middle = (array.length / 2).round

  left_side = array[0...middle]
  right_side = array[middle...array_size]

  sorted_left = merge_sort(left_side)
  sorted_right = merge_sort(right_side)

  merge(array, sorted_left, sorted_right)

  return array
end

def merge(array, sorted_left, sorted_right)
  left_size = sorted_left.length
  right_size = sorted_right.length

  array_pointer = 0
  left_pointer = 0
  right_pointer = 0

  while left_pointer < left_size && right_pointer < right_size
    if sorted_left[left_pointer] < sorted_right[right_pointer]
      array[array_pointer] = sorted_left[left_pointer]
      left_pointer+=1
    else
      array[array_pointer] = sorted_right[right_pointer]
      right_pointer+=1
    end
    array_pointer+=1
  end

  while left_pointer < left_size
    array[array_pointer] = sorted_left[left_pointer]
    left_pointer+=1
    array_pointer+=1
  end

  while right_pointer < right_size

    array[array_pointer] = sorted_right[right_pointer]
    right_pointer+=1
    array_pointer+=1
  end

  return array
end

random_array = Array.new(50).map {rand(100)}
print("\nBefore #{[3,44,38,5,47,15,36,26,27,2,46,4,19,50,48]} and after ", merge_sort([3,44,38,5,47,15,36,26,27,2,46,4,19,50,48]), "\n")
print("\nBefore	 #{[10,15,1,2,6,12,5,7]}	 and	 after	 ", merge_sort([10,15,1,2,6,12,5,7]), "\n")
print("\nBefore #{random_array} and after ", merge_sort(random_array), "\n")
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: 6.4.2.3 Quick sort

def quick_sort(array, first, last)
  if first < last
    j = partition(array, first, last)
    quick_sort(array, first, j-1)
    quick_sort(array, j+1, last)
  end
  return array
end

def partition(array, first, last)
  pivot = array[last]
  pIndex = first
  i = first
  while i < last
    if array[i].to_i <= pivot.to_i
      array[i], array[pIndex] = array[pIndex], array[i]
      pIndex += 1
    end
    i += 1
  end
  array[pIndex], array[last] = array[last], array[pIndex]
  return pIndex
end


random_array = Array.new(50).map {rand(100)}
print("\nBefore #{[3,44,38,5,47,15,36,26,27,2,46,4,19,50,48]} and after ", quick_sort([3,44,38,5,47,15,36,26,27,2,46,4,19,50,48],0, [3,44,38,5,47,15,36,26,27,2,46,4,19,50,48].length-1), "\n")
print("\nBefore #{[10,15,1,2,6,12,5,7]} and after ",
      quick_sort([10,15,1,2,6,12,5,7],0,[10,15,1,2,6,12,5,7].length - 1), "\n")
print("\nBefore #{random_array} and after ",
      quick_sort(random_array,0,random_array.length-1), "\n")
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\