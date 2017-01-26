class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
<<<<<<< HEAD
    if person.class != Person
      begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    else
      person.partner = self
    end
  end

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
=======
    person.partner = self
>>>>>>> 9dfe840866b5bf7ab068ce96927e29c5ad369f5d
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
<<<<<<< HEAD
=======




>>>>>>> 9dfe840866b5bf7ab068ce96927e29c5ad369f5d
