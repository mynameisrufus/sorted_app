module UsersHelper
  def link_to_sorted(name, order)
    sorter    = ActionView::Base::SortedViewHelper.new(order, ((request.get? && !params.nil?) ? params.dup : nil))
    css_class = case sorter.css
                when "sorted asc"
                  "ui-icon ui-icon-triangle-1-n"
                when "sorted desc"
                  "ui-icon ui-icon-triangle-1-s"
                when "sorted"
                  "ui-icon ui-icon-carat-2-n-s"
                end
    link_to(content_tag(:span, nil, {:class => css_class}) + name.to_s, sorter.params)
  end
end
