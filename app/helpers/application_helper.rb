module ApplicationHelper
  def absolute_temp_to_c(temp)
    (temp.to_f - 273.15).to_i
  end
end
