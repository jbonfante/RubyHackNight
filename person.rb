# File person.rb

class Person
  attr_accessor :first_name, :last_name, :account_created

  def initialize(first_name, last_name)
     @first_name = first_name
     @last_name = last_name
     @account_created = false
  end

  def has_account?
     account_created
  end
end