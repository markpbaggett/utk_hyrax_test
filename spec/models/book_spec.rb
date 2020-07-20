# Generated via
#  `rails generate hyrax:work Book`
require 'rails_helper'

RSpec.describe Book do
  describe "#provider" do

    context "with a new Image" do
      it "has no provider value when it is first created" do
        image = Image.new
        expect(image.provider).to be_nil
      end
    end

    context "with an Image that has a provider defined" do
      it "can set and retrieve a provider value" do
        image = Image.new
        image.provider = "University of Tennessee"
        expect(image.provider).to eq("University of Tennessee")
      end
    end

  end
end
