class TopicsController < ApplicationController
  layout 'blog'

  def index
    @pagy, @topics = pagy Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    if logged_in?(:site_admin)
      @pagy, @blogs = pagy @topic.blogs.recent.all
    else
      @pagy, @blogs = pagy @topic.blogs.recent.published
    end
  end
end
