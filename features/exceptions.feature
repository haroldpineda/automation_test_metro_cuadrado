@exceptions @alltestcases
Feature: Exceptions in metrocuadrado.com

Background:
Given As a user I enter the website metrocuadrado.com

Scenario Outline: Calculate how much they lend me with a salary of less than 737,717.
When I want to calculate how much they lend me with my current salary '737,716' with a term of '<years>'
And You will see the exception of 'lower than expected salary'
Examples:
| years |
| 5     |
| 10    |
| 15    |
| 20    |

Scenario Outline: Calculate the value of the installment of a credit less than 15,000,000.
When I want to calculate the value of the credit installment for the value of '14,999,999' with a term of '<years>'
And You will see the exception of 'lower than expected value of credit'
Examples:
| years |
| 5     |
| 10    |
| 15    |
| 20    |
