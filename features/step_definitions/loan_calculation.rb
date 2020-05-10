Given('I want to calculate how much they lend me with my current salary {string} with a term of {string}') do |salary, years|
  @frame_object = Pages::Calculator_frame::Frameobjects.new
  @frame_object.set_data_in_form_loan_amount(salary, years)
end

Then('I want to calculate the value of the credit installment for the value of {string} with a term of {string}') do |value_credit, years|
  @frame_object = Pages::Calculator_frame::Frameobjects.new
  @frame_object.set_data_in_form_quota_value(value_credit, years)
end

Then('I want to see the information on {string} and validate the values {string}') do |type_consult, information_type|
  data_result = YAML.load_file('data/result_query.yml')[information_type]
  @frame_results = Pages::Calculator_frame::Frameresult.new
  case type_consult
  when 'how much do you lend me'
    @frame_results.value_lend(data_result)
  when 'value of credit installments'
    @frame_results.value_installments(data_result)
  end
end

Then('You will see the exception of {string}') do |type_operation|
 @frame_object = Pages::Calculator_frame::Frameobjects.new
 @frame_object.set_exception_in_textbox(type_operation)
end
