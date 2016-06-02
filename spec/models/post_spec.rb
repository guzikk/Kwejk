require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'database columns' do
    it { should have_db_column :content }
    it { should have_db_column :mem_id }
    it { should have_db_column :user_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :mem }
    it { is_expected.to belong_to :user }
  end
end
