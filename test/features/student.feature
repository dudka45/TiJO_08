Feature: Filter
  Scenario: Search case
    When I browse to the "/"
    When I enter "ray" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Gray"
    Then I should see "Gray" in "firstName" column in row "1" of "student.table" table
    When I enter "enc" into "input.search" field
    Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
    Then I should see "Spencer" in "lastName" column in row "1" of "student.table" table
    When I enter "24" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "24"
    Then I should see "24" in "age" column in row "1" of "student.table" table
  Scenario: firstName search
    When I browse to the "/"
    When I enter "rner" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Warner"
    Then I should see "Warner" in "firstName" column in row "1" of "student.table" table
  Scenario: lastName search
    When I browse to the "/"
    When I enter "nett" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
    Then I should see "Burnett" in "lastName" column in row "1" of "student.table" table
  Scenario: age search
    When I browse to the "/"
    When I enter "27" into "input.age" field
    Then the css element "td:nth-of-type(3)" should contain the text "27"
    Then I should see "27" in "age" column in row "1" of "student.table" table
  Scenario: email search
    When I browse to the "/"
    When I enter ".tv" into "input.email" field
    Then the css element "td:nth-of-type(4)" should contain the text "good.burnett@undefined.tv"
    Then I should see "good.burnett@undefined.tv" in "email" column in row "1" of "student.table" table
  Scenario: phone number search
    When I browse to the "/"
    When I enter "2012" into "input.phone" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (932) 408-2012"
    Then I should see "+1 (932) 408-2012" in "phone" column in row "1" of "student.table" table