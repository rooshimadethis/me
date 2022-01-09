require 'date'
require 'facets/integer/ordinal'

module Jekyll
  module DateFilter
    def pretty(date)
        #date:"%B %e, %Y %H:%M"
        if (date.is_a? Integer) 
            date = Time.at(date)
        end
      "#{date.strftime('%B')} #{date.strftime('%e').to_i.ordinalize}, #{date.strftime('%Y')} #{date.strftime('%H')}:#{date.strftime('%M')}"
    end  
  end
end

Liquid::Template.register_filter(Jekyll::DateFilter)
