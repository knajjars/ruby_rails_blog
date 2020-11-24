module Placeholder
  extend ActiveSupport::Concern

  def self.generate_image(width:, height:)
    "https://placehold.it/#{width}x#{height}"
  end
end