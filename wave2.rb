class Planet
  attr_accessor :name, :age, :distance_from_sun, :year_length, :inhabitants

  def initialize(name, age, distance_from_sun, year_length, inhabitants)
    @name = name
    @age = age
    @distance_from_sun = distance_from_sun
    @year_length = year_length
    @inhabitants = inhabitants
  end

  def list_attributes
    list = "
      Name: #{@name}\n
      Age: #{@age}\n
      Distance From Sun: #{@distance_from_sun}\n
      Year Length: #{@year_length}\n
      Inhabitants: #{@inhabitants}
    "
    return list
  end
end

class SolarSystem

  attr_accessor :planets

  def initialize(planets = Array.new)
    @planets = planets
  end

  # method to add new planets
  def add_new_planet(new_planet)
    @planets.push(new_planet)
  end

  # method that returns a list of strings
  def list_planets
    list = ""
    @planets.each do |planet|
      list += "#{@planets.index(planet) + 1}. #{planet}\n"
    end
    return list
  end
end

kate = Planet.new("Something", 45, "6789mi", "789days", "Cone Heads")

pond = Planet.new("Pond Planet", 5, "69mi", "7days", "None")

puts kate.list_attributes

kate_system = SolarSystem.new(planet= [kate, pond])

puts kate_system.list_planets
