require 'rails_helper'

RSpec.describe Hyrax::ImagePresenter do
  subject { presenter }

  let(:title) { ['Journey to Skull Island'] }
  let(:creator) { ['Quest, Jane'] }
  let(:provider) { "University of Tennessee. Libraries" }
  let(:photographer) { ["Unknown"] }
  let(:visibility) { Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC }
  let :image do
    Image.new(
      title: title,
      creator: creator,
      provider: provider,
      photographer: photographer,
      visibility: visibility
    )
  end

  let(:ability) { Ability.new(user) }

  let(:solr_document) { SolrDocument.new(image.to_solr) }

  let(:presenter) do
    described_class.new(solr_document, nil)
  end

  it "delegates provider to solr document" do
    expect(solr_document).to receive(:provider)
    presenter.provider
  end

  it "delegates photographer to solr document" do
    expect(solr_document).to receive(:photographer)
    presenter.photographer
  end
end