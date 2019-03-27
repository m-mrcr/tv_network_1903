class Network

  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows.push(show)
  end

  def highest_paid_actors
    @shows.map do |show|
      show.characters.max_by do |character|
        character.salary
      end
    end
  end

  def highest_paid_actor
    highest_paid_actors.max_by do |actor|
      actor.salary
    end.actor
  end

  def payroll
    payroll = Hash.new
    @shows.map do |show|
      show.characters.map do |character|
        payroll[character.actor] = character.salary
      end
    end
    payroll
  end

end
