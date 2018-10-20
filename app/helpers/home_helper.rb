# frozen_string_literal: true

module HomeHelper
  def possessive_name(name)
    name + case name[-1, 1]
           when 's' then "'"
           else "'s"
    end
  end
end
