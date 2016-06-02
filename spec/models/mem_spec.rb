require 'rails_helper'

RSpec.describe Mem, :type=>:model do
describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :image }
  end

  describe 'database columns' do
    it { should have_db_column :name }
    it { should have_db_column :description }
    it { should have_db_column :image_file_name }
    it { should have_db_column :active }
  end

  describe 'associations' do
    it { is_expected.to have_many :posts }
    it { is_expected.to belong_to :user }
  end

end

