# automation_test_metro_cuadrado
In this repository the structure of a test automation project will be added to the page metrocuadrado.com

Home Loan Calculator Test Cases in [MetroCuadrado.com](https://www.metrocuadrado.com/calculadora-credito-hipotecario-vivienda/)

## Getting Started

These instructions will get you run the tests.

### Prerequisites

To run the test, is necessary that you install:
 - `Homebrew`
 - `ruby` 2.6.5
 - `Chrome` Versión 80.0.3987.149
 - `ChromeDriver` 79.0.3945.36 ->
   ``` brew install chromedriver ```
 - `Geckodriver` 0.26.0 ->
 https://github.com/mozilla/geckodriver/releases


### Installing

To install all gems, run this command:

```
bundle install
```
## Running the tests

To run the automated tests, you run this command:

```
Expecification tag @happy_flow  @alltestcases or @exceptions

            $ cucumber --tags @happy_flow

Expecification browser : chrome or firefox

            $ cucumber --tags @alltestcases BROWSER=chrome
```
```
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
```

## Built With

* [Ruby] [Cucumber] [Capybara] [Siteprism] [Selenium] [Geckodriver] [Chromedriver] 

## Author

* **Harold Pineda Valiente ** - *Initial work* - [haroldpineda](https://github.com/haroldpineda)



