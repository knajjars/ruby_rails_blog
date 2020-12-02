class Portfolio < ApplicationRecord
  include Placeholder

  # validation
  validates_presence_of :body, :title, :main_image, :thumb_image

  # relation
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  # hooks
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.generate_image(width: 600, height: 400)
    self.thumb_image ||= Placeholder.generate_image(width: 350, height: 200)
  end

end
