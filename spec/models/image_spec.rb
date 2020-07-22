# Generated via
#  `rails generate hyrax:work Image`
require 'rails_helper'

RSpec.describe Image do
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

  describe "#photographer" do

    context "with a new Image" do
      it "has no photographer value when it is first created" do
        image = Image.new
        expect(image.photographer).to be_empty
      end
    end

    context "with an Image that has a provider defined" do
      it "can set and retrieve a provider value" do
        image = Image.new
        image.photographer = ["Unknown"]
        expect(image.photographer).to eq(["Unknown"])
      end
    end

  end
end
