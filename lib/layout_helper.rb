module LayoutHelper
    
    def title(t,display=true)
      content_for :title do
        t
      end
      return t if display
    end
    
    def display_errors_for(obj,field)
      content_tag :div, :class => 'error_for_field' do
        obj.errors[field.to_sym].map { |e| e.to_s }.join(", ")
      end
    end
    
    def input_field(f,obj,field,&block) 
      rc = "<div class='input_field'>".html_safe
      if f
        rc += f.label(field.to_sym)
      else
        rc += label_tag(field.to_sym)
      end
      rc += yield
      rc += NBSP + display_errors_for( obj, field.to_sym )
      rc += "</div>".html_safe
      rc
    end
    
    def page_menu(items)
      rc = "<div id='page_menu'><ul>"
      items.each do |item|
        rc += "<li>#{link_to( item[:label], item[:url] )}</li>"
      end
      rc += "</ul></div>"
      rc
    end
    
end

module StringExtensions
  RAND_CHARS = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789"
  def random_string(len)
      rand_max = RAND_CHARS.size
      ret = "" 
      len.times{ ret << RAND_CHARS[rand(rand_max)] }
      ret 
  end
end

class String
  extend StringExtensions
end


