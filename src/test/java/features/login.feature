@Login

Feature: Anglo Project Site Login

  Scenario Outline: As a user I want to login with valid credentials
    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved


    Examples:
      | UsernameValue | UsernameID  | PasswordValue | PasswordID  | ButtonID       |
      | Admin         | txtUsername | 123           | txtPassword | btnLoginSubmit |


  Scenario Outline: Navigate to Audit Universe Module
    And I wait for the element to be visible
    Then I switch to an iframe
    And I wait for the element to be visible
    And I click on an element <Audit Universe> with xpath
    And I click on an element <Add> with xpath
    And I wait for the element to be visible

    Examples:
      | Audit Universe                                                   | Add                 |
      | //div[@id='section_3021a8a1-eee3-4af3-aeef-6a5d4b499bb6']//label | //div[text()='Add'] |


  Scenario Outline: Capture Audit Universe Details and Save

  #  When I enter <UsernameID> with ID <UsernameValue>



    When I enter <Audit Protocol CSS> using CSSSelector <Audit Protocol Text>
   # When I enter <Audit Protocol ID> with ID <Audit Protocol Text>

#    When I enter <Audit Protocol Text> using xpath <Audit Protocol>
    And I wait for the element to be visible
    Then I click on an element <Business Unit DD> with xpath
    And I wait for the element to be visible
    Then I click on an element <Business Unit Selection> with xpath
    And I wait for the element to be visible
    Then I click on an element <Audit Answer Set> with xpath
    Then I click on an element <Audit Answer Set Select> with xpath
    Then I click on an element <Save> with xpath




    Examples:
      | Audit Protocol CSS                                                             | Business Unit DD                                              | Business Unit Selection                                                                    | Audit Answer Set                                              | Audit Answer Set Select                                | Save                                                                               | Audit Protocol Text | Audit Protocol   | Audit Protocol ID                            |
      | #control_46564859-8BA5-47D0-9760-D561A2E0A967 > div.border.c-txb > div > input | //div[@id='control_449BE675-4E59-4D73-BC5C-3299FA3FE0C3']//li | //div[@id='control_449BE675-4E59-4D73-BC5C-3299FA3FE0C3']//b[@original-title='Select all'] | //div[@id='control_46AE15C5-B873-488A-96D8-367ACE2710B9']//li | //a[@id='77c98dca-1524-4656-b3f0-fe13e00b27c4_anchor'] | //div[@id='btnSave_form_62D4AF52-271E-4D57-9BA4-6A270249FF36']//div[@title='Save'] | Audit universe      | txt translatable | control_46564859-8BA5-47D0-9760-D561A2E0A967 |
