# Generated via
#  `rails generate hyrax:work Image`
module Hyrax
  # Generated form for Image
  class ImageForm < Hyrax::Forms::WorkForm
    self.model_class = ::Image
    self.terms += [:resource_type]
    self.terms += [:year]
    self.terms += [:dataprovider]
    self.required_fields -= [:keyword]
    self.required_fields += [:dataprovider]
  end
end
