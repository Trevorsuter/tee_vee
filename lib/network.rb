class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    shows << show
  end

  def main_characters
    main_characters = []
    shows.each do |show|
      main_characters << show.characters
    end
    main_characters.flatten!
    main_characters
  end
end
