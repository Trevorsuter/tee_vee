class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters = [])
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    all_salary = 0
    characters.each do |character|
      all_salary += character.salary
    end
    all_salary
  end

  def highest_paid_actor
    characters.map do |character|
      highest_paid = character.max(character.salary)
    end
    highest_paid.actor
  end

  def actors
    actor_names = []
    characters.each do |actor_name|
      actor_names << actor_name.actor
    end
    actor_names
  end
end
