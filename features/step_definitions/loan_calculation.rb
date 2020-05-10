Given('I want to calculate how much they lend me with my current salary {string} with a term of {string}') do |salary, years|
  @frame_object = Pages::Calculator_frame::Frameobjects.new
  @frame_object.set_data_in_form(salary, years)
end
