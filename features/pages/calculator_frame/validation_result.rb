# frozen_string_literal: true

module Pages
  module Calculator_frame
      class Frameresult < SitePrism::Page
        include RSpec::Matchers
        element :label_lend_up, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[3]/div[1]/dl[2]/dd'
        element :label_monthly_income, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[3]/div[1]/dl[2]/dd'
        element :label_minimum_initial_fee, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[3]/div[1]/dl[3]/dd'
        element :label_mount_minimum_initial_fee, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[3]/div[1]/dl[3]/dd'
        element :label_buy_property, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[3]/div[1]/dl[4]/dd'
        element :label_buy_property_from, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[3]/div[1]/dl[4]/dd'
        element :label_estimated_value_fee, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[3]/div[2]/table/tbody/tr[3]/td[3]'
        element :label_interest_rate, :xpath, '/html/body/div[3]/div[2]/div/div/div[1]/div[3]/div[2]/table/tbody/tr[3]/td[4]'
        element :label_monthly_fee_value, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[3]/div[2]/table/tbody/tr[3]/td[2]'
        element :label_estimated_loan_value, :xpath, '/html/body/div[3]/div[2]/div/div/div[2]/div[3]/div[2]/table/tbody/tr[3]/td[3]'

        def value_lend(data_result)
          expect(label_lend_up.text).to eql(data_result['lend_up'])
          expect(label_minimum_initial_fee.text).to eql(data_result['minimum_initial_fee'])
          expect(label_buy_property.text).to eql(data_result['buy_property'])
          expect(label_estimated_value_fee.text).to eql(data_result['estimate_value_fee'])
          expect(label_interest_rate.text).to eql(data_result['interest_rate'])
        end

        def value_installments(data_result)
          expect(label_monthly_income.text).to eql(data_result['monthly_income'])
          expect(label_mount_minimum_initial_fee.text).to eql(data_result['mount_minimum_initial_fee'])
          expect(label_buy_property_from.text).to eql(data_result['buy_property_from'])
          expect(label_monthly_fee_value.text).to eql(data_result['monthly_fee_value'])
          expect(label_estimated_loan_value.text).to eql(data_result['estimated_loan_value'])
        end
      end
    end
  end
