require 'rails_helper'

RSpec.feature 'Display an Image' do
  let(:title)      { ['Journey to Skull Island'] }
  let(:creator)    { ['Quest, Jane'] }
  let(:visibility) { Hydra::AccessControls::AccessRight::VISIBILITY_TEXT_VALUE_PUBLIC }
  let(:user)       { 'test@example.com' }
  let(:provider)   { 'University of Tennessee. Libraries' }
  let(:photographer) { ['Unknown'] }

  let :image do
    Image.create(title:      title,
                creator:    creator,
                visibility: visibility,
                provider: provider,
                photographer: photographer,
                depositor:  user)
  end

  scenario "Show a public Image" do
    visit("/concern/images/#{image.id}")

    expect(page).to have_content image.title.first
    expect(page).to have_content image.creator.first
    expect(page).to have_content image.provider.first
    expect(page).to have_content image.photographer.first
  end
end
