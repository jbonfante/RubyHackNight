require_relative '../spec_helper'
# require_relative '../person'

describe Person do
  subject {Person.new('FirstName', 'LastName')}
  it 'has a first name' do
    expect(subject.first_name).to eq('FirstName')

  end
  it 'has a last name' do
    expect(subject.last_name).to eq('LastName')
  end

  it "should be able to open an account" do
     expect(subject).to respond_to(:has_account?)
     expect(subject.has_account?).to be(false)
     subject.account_created = true
     expect(subject.has_account?).to be(true)
  end
end
