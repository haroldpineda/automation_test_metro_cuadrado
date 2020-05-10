# frozen_string_literal: true

module Pages
  module Calculator_frame
      class Frameobjects < SitePrism::Page
        element :textbox_monthlyincome, "#ingresosMensuales"
        element :checkbox_years, :xpath, "/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select"
        element :button_calculate, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/button'
        element :option_five_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select/option[1]'
        element :option_ten_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select/option[2]'
        element :option_fifteen_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select/option[3]'
        element :option_twenty_years, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[1]/form/div[2]/select/option[4]'

        def set_data_in_form(salary, years)
          option_years = years.to_s
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
      end
    end
  end
