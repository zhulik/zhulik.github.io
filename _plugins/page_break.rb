module Jekyll
  class PageBreak < Liquid::Tag
    def render(context)
      '<div style="display: block; clear: both; page-break-after: always;"></div>'
    end
  end
end

Liquid::Template.register_tag('page_break', Jekyll::PageBreak)
