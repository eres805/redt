require 'spec_helper'

describe User do
	subject(:user){User.new({
    name: 'Patrick',
    email: 'pat@rick.com',
    password: 'spongebob',
    password_confirmation: 'spongebob',
  })}

it { should validate_presence_of(:name) }
it { should validate_presence_of(:email) }
it { should have_secure_password }
it { should have_many(:links) }

end