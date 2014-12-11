# File account_spec.rb
require_relative '../spec_helper'

describe Account do
  let (:person) {Person.new('Saundra', 'Castaneda')}
  subject {Account.new(person)}
  it 'should be owned' do
     expect(subject.person).to_not be_nil


  end

  it "should only belong to a single person" do
     expect(subject.person).to be_an_instance_of(Person)
  end

  it "should be able to create an account" do
    expect(subject.person.has_account?).to be false
  end

  it "should not be able to create an account if person has one already" do
    subject.create_account_for_person
    expect(subject.person.has_account?).to be true
  end
end