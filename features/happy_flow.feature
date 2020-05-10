@happy_flow

Feature: Happy user flows in metrocuadrado.com

Background:
Given As a user I enter the website metrocuadrado.com

Scenario Outline: Calculate how much they lend me.
When I want to calculate how much they lend me with my current salary '<salary>' with a term of '<years>'

Examples:
    | salary      | years |
    | 8000000     | 5     |
    | 5000000     | 10    |
    | 2000000     | 15    |
    | 1000000     | 20    |
