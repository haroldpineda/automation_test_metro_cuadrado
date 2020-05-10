# frozen_string_literal: true

module Pages
  module Calculator_frame
      class Frameobjects < SitePrism::Page
        element :textbox_monthlyincome, "#ingresosMensuales"
        element :textbox_minLoadAmount, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[1]/form/div[1]/input'
        element :checkbox_years, :xpath, "/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select"
        element :checkbox_two_years, :xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div[1]/form/div[2]/select"
        element :button_calculate, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/button'
        element :button_calculate_quote, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[1]/form/button'
        element :option_five_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select/option[1]'
        element :option_two_five_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[1]/form/div[2]/select/option[1]'
        element :option_ten_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select/option[2]'
        element :option_two_ten_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[1]/form/div[2]/select/option[2]'
        element :option_fifteen_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select/option[3]'
        element :option_two_fifteen_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[1]/form/div[2]/select/option[3]'
        element :option_twenty_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select/option[4]'
        element :option_two_twenty_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[1]/form/div[2]/select/option[4]'
        element :eyelash_quota_value, '.opcion_cuotas'


        def set_data_in_form_loan_amount(salary, years)
          textbox_monthlyincome.set salary
          checkbox_years.click
          case years
          when '5'
            option_five_years.click
          when '10'
            option_ten_years.click
          when '15'
            option_fifteen_years.click
          when '20'
            option_twenty_years.click
          end
          button_calculate.click
        end

        def set_data_in_form_quota_value(value_credit, years)
          eyelash_quota_value.click
          textbox_minLoadAmount.set value_credit
          checkbox_two_years.click
          case years
          when '5'
            option_two_five_years.click
          when '10'
            option_two_ten_years.click
          when '15'
            option_two_fifteen_years.click
          when '20'
            option_two_twenty_years.click
          end
          button_calculate_quote.click
        end
      end
    end
  end
