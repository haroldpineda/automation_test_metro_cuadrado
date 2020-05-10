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

        def value_prestamo(data_result)
          expect(label_lend_up.text).to include(data_result['lend_up'])
          expect(label_minimum_initial_fee.text).to include(data_result['minimum_initial_fee'])
          expect(label_buy_property.text).to include(data_result['buy_property'])
        end

        def value_quote(data_result)
          expect(label_monthly_income.text).to include(data_result['monthly_income'])
          expect(label_mount_minimum_initial_fee.text).to include(data_result['mount_minimum_initial_fee'])
          expect(label_buy_property_from.text).to include(data_result['buy_property_from'])
        end
      end
    end
  end
