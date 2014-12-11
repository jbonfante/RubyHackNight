# File account.rb

class Account
  attr_accessor :person
  def initialize(person)
    @person = person


  end

  def create_account_for_person
    unless person.has_account?
      person.account_created = true
    end
  end

end