require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do 
  	it {is_expected.to have_many :users}
  	it {is_expected.to have_many :posts}
end
