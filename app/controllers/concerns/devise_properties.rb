module DeviseProperties
  include ActiveSupport::Concern

  def user_signed_in?
    super
  end

  def current_user
    super || guest_user
  end

  def guest_user
    user = GuestUser.new
    user.name = 'Guest User'
    user.email = 'guestuser@example.com'
    user
  end
end
