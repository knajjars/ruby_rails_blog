module DeviseProperties
  include ActiveSupport::Concern

  def user_signed_in?
    super
  end

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(
        name: 'Guest User',
        first_name: 'Guest',
        last_name: 'User',
        email: 'guest@example.com'
    )
  end
end
