module BlogsHelper
  def blog_status_helper blog
    if blog.draft?
      'color: red;'
    end
  end
end
