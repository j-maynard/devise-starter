module ApplicationHelper
    def page_title(title)
        content_for :page_title, title + PAGE_TITLE_SUFFIX
    end

    def display_page_title
        title = "#{t('title')} - #{content_for :page_title}"
        raise NotImplementedError.new('Missing page title') if Rails.env.test? && (title == PAGE_TITLE_SUFFIX || title.nil?)
    
        title
    end
end
