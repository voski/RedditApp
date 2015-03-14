module ApplicationHelper
  def auth_input
    html = <<-HTML
      <input type="hidden" name="authenticity_token" value=#{form_authenticity_token}>
    HTML

    html.html_safe
  end

  def request_input(request)
    html = <<-HTML
      <input type="hidden" name="_method" value="#{h(request)}">
    HTML

    html.html_safe
  end

  def header_nav
    html = <<-HTML
      <div class="header_nav_bar">
        <ul>
          <li>
            #{link_to "Sign up", new_user_url}
          </li>
          <li>
            #{link_to "Sign In", new_session_url}
          </li>
        </ul>
      </div>
    HTML

    html.html_safe
  end
end
