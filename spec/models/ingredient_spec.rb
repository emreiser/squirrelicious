require 'spec_helper'

describe Ingredient do

  describe "associations" do
    it { should have_and_belong_to_many :baskets }
  end

end
