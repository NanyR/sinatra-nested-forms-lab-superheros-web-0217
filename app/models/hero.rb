class Hero

  attr_accessor :name, :power, :bio

  @@all=[]

  def initialize(parameters)
    @name=parameters[:name]
    @power=parameters[:power]
    @bio=parameters[:bio]
    @@all<<self
  end

  def self.all
    @@all
  end

end
