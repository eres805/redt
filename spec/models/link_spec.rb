require 'spec_helper'

describe Link do
	subject(:link){Link.new({
    url: 'www.google.com',
    description: 'google homepage',
    title: 'GOOGLE',
    net_rating: '3',
  })}

it { should validate_presence_of(:url) }
it { should validate_uniqueness_of(:url) }

it { should validate_presence_of(:description) }
it { should validate_presence_of(:title) }
it { should validate_presence_of(:net_rating) }

end