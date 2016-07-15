class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

  def get_married(person)
    self.partner = person
    # error handling
    if person.class != Person # if argument is not an instance of the person objecty
      begin
        raise PartnerError # change the error message here
      rescue PartnerError => error #continue after error has been made
        puts error.message # create an error message to explain the error better
      end # end of begin and rescue command
    else
      person.partner = self
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
