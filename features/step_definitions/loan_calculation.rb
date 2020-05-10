Given('I want to calculate how much they lend me with my current salary {string} with a term of {string}') do |salary, years|
  @frame_object = Pages::Calculator_frame::Frameobjects.new
  @frame_object.set_data_in_form_loan_amount(salary, years)
end

Given('I want to calculate the value of the credit installment for the value of {string} with a term of {string}') do |value_credit, years|
  @frame_object = Pages::Calculator_frame::Frameobjects.new
  @frame_object.set_data_in_form_quota_value(value_credit, years)
end
