require 'spec_helper'

describe Recipe do

  describe "validations" do
    it { should validate_uniqueness_of(:yummlyid) }
  end

  describe "associations" do
    it { should have_and_belong_to_many :users }
  end

end
