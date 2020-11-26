class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include DeviseProperties
  include DefaultPageMetadata
end
