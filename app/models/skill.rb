class Skill < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.generate_image(width: 240, height: 135)
  end
end