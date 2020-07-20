# Generated via
#  `rails generate hyrax:work Book`
require 'rails_helper'

RSpec.describe Hyrax::BookForm do
  subject { form }
  let(:book)    { Book.new }
  let(:ability) { Ability.new(nil) }
  let(:request) { nil }
  let(:form)    { described_class.new(book, ability, request) }
  it "has the expected terms" do
    expect(form.terms).to include(:title)
    expect(form.terms).to include(:provider)
  end
end
