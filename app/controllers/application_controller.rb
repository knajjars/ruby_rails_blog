class ApplicationController < ActionController::Base
  include Pagy::Backend

  include DeviseWhitelist
  include DeviseProperties
  include DefaultPageMetadata
end
