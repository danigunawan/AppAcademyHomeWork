class Animal
  def initialize(species = "wombat")
    @species = species
  end

  def make_sound(num = 3)
    num.times { puts "rawr" }
  end
end

class Liger < Animal
  def initialize(species = "liger")
    super
  end

  def make_sound(num = 4)
    num.times { puts "meow" }
    super(num*2)
  end
end

class Human < Animal
  def initialize(name)
    @name = name
    super("homeo sapian")
  end
end

class Dance
  attr_reader :style

  def initialize(style = "Tap")
    @style = style
  end
end

class Ballet < Dance
  def initialize(technique)
    @technique = technique
    super("Ballet")
  end
end

class Swing < Dance
  def initialize(form)
    @form = form
    super
  end
end

p bolshoi = Ballet.new("Vaganova")
p west_coast_swing = Swing.new("West Coast")
