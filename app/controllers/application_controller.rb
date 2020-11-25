class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include DeviseProperties
end
