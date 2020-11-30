module ApplicationHelper
  def login_helper style = ""
    if current_user.is_a?(GuestUser)
      (link_to 'Log in', new_user_session_path, class: style) +
          " ".html_safe +
          (link_to 'Sign up', new_user_registration_path, class: style)
    else
      link_to 'Log out', destroy_user_session_path, method: :delete, class: style
    end
  end

  def copyright_helper
    DevcampViewTool::Renderer.copyright "Khalil Najjar", "All Rights Reserved."
  end
end
