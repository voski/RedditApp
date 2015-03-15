module PostsHelper
  def post_nav_bar
    html = <<-HTML
      <div class="post_nav_bar">
        <ul>
          <li>
            #{link_to "New comment", new_post_comment_url(@post)}
          </li>
          <li>
            #{link_to "Back", :back}
          </li>
        </ul>
        </div>
      HTML
    html.html_safe
  end
end
