@happy_flow @alltestcases
Feature: Happy user flows in metrocuadrado.com

Background:
Given As a user I enter the website metrocuadrado.com

Scenario Outline: Calculate how much they lend me.
When I want to calculate how much they lend me with my current salary '<salary>' with a term of '<years>'
And I want to see the information on 'how much do you lend me' and validate the values '<validation_values_lend>'
Examples:
    | salary      | years | validation_values_lend       |
    | 8000000     | 5     | value_money_to_lend_5_years  |
    | 5000000     | 10    | value_money_to_lend_10_years |
    | 2000000     | 15    | value_money_to_lend_15_years |
    | 1000000     | 20    | value_money_to_lend_20_years |

Scenario Outline: Calculate value of credit installments.
When I want to calculate the value of the credit installment for the value of '<value_credit>' with a term of '<years>'
And I want to see the information on 'value of credit installments' and validate the values '<validation_values_credit>'
Examples:
    | value_credit | years | validation_values_credit     |
    | 70000000     | 5     | value_quote_to_lend_5_years  |
    | 90000000     | 10    | value_quote_to_lend_10_years |
    | 120000000    | 15    | value_quote_to_lend_15_years |
    | 200000000    | 20    | value_quote_to_lend_20_years |
