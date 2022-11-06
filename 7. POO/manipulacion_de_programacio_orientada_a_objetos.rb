# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# Sección: recopila todos los segmentos trabajados en el apartado 7. POO

$hunters = 10

class Animal
  #getters y setters
  attr_reader :typeName, :color, :food, :habitat
  attr_accessor :years, :walk, :eat, :run

  def initialize(typeName, color, food, habitat, years)
    @typeName = typeName
    @color = color
    @food = food
    @habitat = habitat
    @years = years
    @walk = false
    @eat = false
    @run = false
  end

  def animalWalk()
    @eat = false
    @walk = true
    @run = false
    print("El animal está caminando\n")
  end

  def animalEat()
    @eat = true
    @walk = false
    @run = false
    eatenFood = 45
    print("El animal esta comiendo #{eatenFood} gramos de comida\n")
  end

  def animalRun()
    @eat = false
    @run = true
    @walk = false
    print("El animal está corriendo\n")
  end

  def avoidCazadores()
    print("El animal debe estar seguro, hay #{$hunters} cazadores cerca")
  end
end


# La clase Dog (perro) hereda todo el comportamiento de Animal
class Dog < Animal
  attr_reader :owner,:name
  attr_accessor :health

  def initialize(color,food,habitat, years,name,health,owner)
    super("Dog", color, food,habitat, years)
    @name = name
    @health = health
    @owner = owner
  end
  #sobreescribiendo un método para adaptarlo a la clase a animal
  def animalEat()
    @eat = true
    @walk = false
    @run = false
    eatenFood = 1
    print("El perro esta comiendo #{eatenFood} kilogramo de carne\n")
  end
end


def main()
  myAnimal1 = Animal.new("Cat", "white", "Fish", "My house", 2)
  aDog = Dog.new("Brown","Raw Meat", "Domestic",4,"Thomas", "Healthy", "Miguel Angel")

  #imprimiendo para animal
  print("Existe un animal #{myAnimal1.typeName} que come #{myAnimal1.food} y vive en #{myAnimal1.habitat} \n")
  myAnimal1.animalWalk()
  myAnimal1.animalRun()
  myAnimal1.animalEat()
  #imprimiendo para Perro
  print("Existe un perro llamado #{aDog.name} de color #{aDog.color}, come #{aDog.food} y vive en #{aDog.habitat} con su dueño #{aDog.owner} \n")
  aDog.animalWalk()
  aDog.animalRun()
  aDog.animalEat()

end

main()
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
