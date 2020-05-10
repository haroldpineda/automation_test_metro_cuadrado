Given('I want to calculate how much they lend me with my current salary {string} with a term of {string}') do |salary, years|
  @frame_object = Pages::Calculator_frame::Frameobjects.new
  @frame_object.set_data_in_form_loan_amount(salary, years)
end

Given('I want to calculate the value of the credit installment for the value of {string} with a term of {string}') do |value_credit, years|
  @frame_object = Pages::Calculator_frame::Frameobjects.new
  @frame_object.set_data_in_form_quota_value(value_credit, years)
end

Given('See the information of the value that they lend me and the initial fee that I must have {string} {string}') do |type_consult, information_type|
  data_result = YAML.load_file('data/result_query.yml')[information_type]
  @frame_results = Pages::Calculator_frame::Frameresult.new
  case type_consult
  when 'prestamo'
    @frame_results.value_prestamo(data_result)
  when 'value quote'
    @frame_results.value_quote(data_result)
  end
end
