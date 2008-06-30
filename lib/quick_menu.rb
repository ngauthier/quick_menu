# QuickMenu
module ActionView::Helpers::TagHelper
  def quick_menu(opts)
    content = ""
    opts = {:title => 'Menu',
            :identifier => '0',
            :links => []}.merge(opts)
    
    # open the menu div
    content += "<div class=\"quick_menu\">"
    
    # here is the title link
    content += "<a href=\"javascript:void(0)\" onmouseover=\"show_quick_menu('"+opts[:identifier]+"');\" onmouseout=\"hide_quick_menu('"+opts[:identifier]+"');\">"
    
    # put the title in the link
    content+= opts[:title]
    content += "</a>"
    
    # open the mouseout wrapper div
    content += "<div onmouseout=\"hide_quick_menu('"+opts[:identifier]+"');\">"
    
    # open the dropdown div
    content += "<div class=\"quick_menu_links\" id=\"quick_menu_links_"
    content += opts[:identifier]
    content += "\" onmouseover=\"show_quick_menu('"+opts[:identifier]+"');\">"
    
    # open the list
    content += "<ul>"
    
    # links list
    for link in opts[:links]
      # open the list item
      content += "<li>"
    
      # add the link
      content += link
    
      # close the list item
      content += "</li>"
    end
    
    # close the list
    content += "</ul>"
    
    # close the mouseout wrapper div
    content += "</div>"
    
    # close the dropdown div
    content += "</div>"
    
    # close the menu div
    content += "</div>"
    
    return content
  end
end
