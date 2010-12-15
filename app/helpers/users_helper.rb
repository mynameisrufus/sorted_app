module UsersHelper
  def link_to_sorted(name, order)
    sorter = sorted(order)
    css_class = case sorter.to_css
                when "sorted asc"
                  "ui-icon ui-icon-triangle-1-n"
                when "sorted desc"
                  "ui-icon ui-icon-triangle-1-s"
                when "sorted"
                  "ui-icon ui-icon-carat-2-n-s"
                end
    link_to(content_tag(:span, nil, {:class => css_class}) + name, sorter.params)
  end

  def odd_even
    @odd_even ||= 0
    @odd_even += 1
    (@odd_even % 2) == 1 ? 'odd' : 'even'
  end
end
