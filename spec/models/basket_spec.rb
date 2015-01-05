require 'spec_helper'

describe Basket do


  describe "associations" do
    it { should have_and_belong_to_many :ingredients }
    it { should belong_to :user }
  end

end





