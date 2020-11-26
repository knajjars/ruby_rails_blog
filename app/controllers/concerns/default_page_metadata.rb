module DefaultPageMetadata
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "My Portfolio"
    @seo_keywords = "Portfolio Blogs Ruby Ruby on Rails RoR"
  end
end
