require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { User.new }
  it "is not valid without a token" do
     subject.token = nil
     subject.provider = 'F00px'
     subject.name = 'Joana'
     subject.secret = 'ajndjas'
     subject.uid = 'djanda'

     expect(subject).to_not be_valid
   end

# check if user is being saved 
   subject { User.new }
   it "user is saved" do
      subject.token = 'dnaklndkasn'
      subject.provider = 'F00px'
      subject.name = 'Joana'
      subject.secret = 'ajndjas'
      subject.uid = 'djanda'

      expect(subject).to be_valid
    end


end
