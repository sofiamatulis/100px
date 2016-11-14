require 'rails_helper'

RSpec.describe User, :type => :model do

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
