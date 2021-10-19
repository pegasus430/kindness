module ApplicationHelper

  def seo_tag
    # seo = Page.find_by_path(request.fullpath)
    # @content = ""
    # if seo
    #   @content += "<title>#{seo.title}</title>"
    #   @content += "<meta name='description' content='#{seo.description}' />"
    #   @content += "<meta name='keyword' content='#{seo.keyword}' />"
    # end
    # @content.html_safe
  end

  def generate_seo_tag
    @content = []
    @content << "<title>#{@setting.title}</title>"
    # @content << "<meta property='og:title' content='#{@setting.og_title}'>"
    # @content << "<meta property='og:description' content='#{@setting.og_description}'>"
    @content << "<meta name='description' content='#{@setting.description}' />"
    @content << "<meta name='keyword' content='#{@setting.keyword}' />"
    @content.join("\t").html_safe
  end

end
