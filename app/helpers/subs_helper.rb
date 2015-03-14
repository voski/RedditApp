module SubsHelper
  def sub_nav_bar
    html = <<-HTML
      <div class="sub_nav_bar">
        <ul>
          <li>
            <form action='#{new_post_url}' method="get">
              <input type="hidden" name="post[sub_id]" value="#{@sub.id}">
              <input type="submit" value="New Post">
            </form>
          </li>
          <li>
            #{button_to "All Subs", subs_url, method: :get}
          </li>
    HTML

    if @sub.is_moderator?(current_user)
      html += <<-HTML
        <li>
          #{button_to "Edit Sub", edit_sub_url, method: :get}
        </li>
        </ul>
        </div>
      HTML
    else
      html += <<-HTML
        </ul>
        </div>
      HTML
    end

    html.html_safe
  end
end
