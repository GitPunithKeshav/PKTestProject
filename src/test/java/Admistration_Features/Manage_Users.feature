@ManageUsers
#
 Feature: Manage Users
##15
#    #            ############ Adding User#########

Scenario Outline: Navigate to Manage Users

Then I click on an element <Sidebarlink> with xpath
And I wait for the element to be saved
When I click on the <UserManagerTag> with the text <UserManText>
And I wait for the element to be saved
And I switch to an iframe
And I wait for the element to be saved
And I wait for the element to be saved

Examples:
|UserManagerTag|UserManText  |Sidebarlink|
|div           |Users Manager|/html/body/div/div[1]/a/i|


  Scenario Outline: Add a standard User

    When I click the <AddNewUserID> Button with ID
    And I wait for the element to be saved
    And I enter <DefaultEmailXpath> using xpath <DefaultEmailValue>

    Examples:
      |AddNewUserID|DefaultEmailXpath|DefaultEmailValue|
      |btnAddUser  |/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[1]/div[2]/div[1]/div[2]/div/table/tbody/tr[1]/td[2]/div/input|DaisyTesting@gmail.com|



  Scenario Outline: Populate Standard User Details

    And I wait for the element to be saved
    And I enter <UsernameXpath> using xpath <UsernameValue>
    And I enter <FirstnameXpath> using xpath <FirstnameValue>
    And I enter <SurnameXpath> using xpath <SurnameValue>
    When I click the <SaveBtnID> Button with ID



    Examples:
      | UsernameXpath |UsernameValue|FirstnameXpath|FirstnameValue|SurnameXpath|SurnameValue|SaveBtnID|
      |//*[@id="userDetails"]/div/table/tbody/tr[2]/td[2]/div/input|AutomationUser              |//*[@id="userDetails"]/div/table/tbody/tr[3]/td[2]/div/input|Kopano|//*[@id="userDetails"]/div/table/tbody/tr[4]/td[2]/div/input|Daisy|btnSaveUser|


Scenario Outline: Give user permisions

  When I click on the <NewUserTag> with the text <NewUserText>
  When I click the <UserSecurtyID> Button with ID
  When I click on the <LevelTagType> with the text <LevelText>
  When I click on the <ViewTAgType> with the text <ViewText>
  When I click on the <UserGroupTagType> with the text <UserGroupText>


  Examples:

    |NewUserTag|NewUserText|UserSecurtyID|LevelTagType|LevelText|ViewTAgType|ViewText|UserGroupTagType|UserGroupText|
   |          a|AutomationUser|securityTab|a|Hierachy Automation|a|Kopano Testing|a|Administrator|


  Scenario Outline: Assign User Default Interface (User Prfile)
    #Question to Carlo, after Navigating to the User Profile, which user should load? new added or the user ive logged in with?



    When I click on the <NewUserTag> with the text <NewUserText>
    Then I click on an element <DefaultInterfaceXpath> with xpath
    When I click on the <DefaultTagType> with the text <DefaultText>
    And I click the <SaveBtnID> Button with ID

    Examples:

  |NewUserTag|NewUserText|DefaultInterfaceXpath|DefaultTagType|DefaultText|SaveBtnID|
  |a|AutomationUser|//*[@id="divOptions"]/div/div[3]/div[2]/div/a/span[1]/ul/li|a|Carlo2|btnSaveUser|

NOT DONE
  Need to get the host name and port for Cheslin

          Scenario Outline: New User Email Notification
            Given I set up user email notification
            Examples:

            ############ Adding Existing Users#########


  Scenario Outline: Load an existing User


    When I click on the <UserManagerTag> with the text <UserManText>
    And I wait for the element to be saved
    And I switch to an iframe
    When I click on the <ExistingUserTagType> with the text <ExistingUserText>
    And I enter <EditSurnameXpath> using xpath <EditSurnameValue>
    When I click on the <UserSecurityTagType> with the text <UserSecurityText>
    When I click on an element <ChangeUserGroupXpath> with xpath


                    Examples:
           |UserManagerTag |UserManText|ExistingUserTagType|ExistingUserText|EditSurnameXpath|EditSurnameValue|UserSecurityTagType|UserSecurityText|ChangeUserGroupXpath|
            | div                  |User Manager|a|AutomationUser|//*[@id="userDetails"]/div/table/tbody/tr[4]/td[2]/div/input|Edit|a|User security |//*[@id="6c4fbfa5-b69a-4f6a-b0ad-0de5551640c2_anchor"]|




#      #####Deactivate/Activate User######
  Scenario Outline: Deactivate  User
    When I click on the <UserTagType> with the text <UserText>
    When I click the <DeactivateUserBtnID> Button with ID
    And Switch back to default content
    When I click the <ConfirmNobtn> Button with ID
    And I switch to an iframe
    When I click the <DeactivateUserBtnID> Button with ID
    And Switch back to default content
    When I click the <ConfirmYesbtnID> Button with ID
    Then I click on an element <OKXpath> with xpath
#    When I click on the <OkTagType> with the text <OkText>
    Then I click on an element <UsersXpath> with xpath




    Examples:
     |DeactivateUserBtnID|ConfirmYesbtnID|ConfirmNobtn|UserTagType|UserText|OkTagType|OkText|OKXpath|UsersXpath|
     |btnDeleteUser      |btnConfirmYes  |btnConfirmNo|a          |Daisy Kopano|div  |OK    |/html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2]/div|/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[1]/div|

Scenario Outline: Activate  User

Then I click on an element <DeactivatedUsersBtnXpath> with xpath
When I click on the <UserTagType> with the text <UserText>
When I click on the <ActivateUserTag> with the text <ActivateUserText>
And Switch back to default content
When I click the <ConfirmNobtn> Button with ID
And I switch to an iframe
When I click on the <ActivateUserTag> with the text <ActivateUserText>
And Switch back to default content
When I click the <ConfirmYesbtnID> Button with ID
Then I click on an element <OKXpath> with xpath
Then I click on an element <UsersXpath> with xpath
When I enter <SearchInputID> with ID <SearchInputValue>


Examples:
|DeactivatedUsersBtnXpath|ActivateUserTag|ActivateUserText|UserTagType|UserText|ConfirmYesbtnID|ConfirmNobtn|OKXpath|UsersXpath|SearchInputID|SearchInputValue|
|/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[2]/div|div|Activate user|a|Daisy Kopano|btnConfirmYes|btnConfirmNo|/html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2]/div|/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[1]/div|txtSearch|Daisy|

#    Scenario Outline: Activate  User Email
#      And Activate user email
#
#      Examples:

#    ###########Request for Access##########
RUN ACCESS REQUEST SCRIPT FIRST
  Email part not automated
Scenario Outline: I request access

When I click the <RequestAccessID> Button with ID
When I enter <txtsurnameID> with ID <txtsurnameValue>
When I enter <txtnameID> with ID <txtnameValue>
When I enter <txtdefault_emailID> with ID <txtdefault_emailValue>
When I enter <txtReqNotesID> with ID <txtReqNotesValue>
When I click the <btnAccessSubmitID> Button with ID

Examples:
|RequestAccessID|txtsurnameID|txtsurnameValue|txtnameID|txtnameValue|txtdefault_emailID|txtdefault_emailValue|txtReqNotesID|txtReqNotesValue   |btnAccessSubmitID|
|lblAccess      |txtsurname  | Daisy         |txtname  | Kopano     |txtdefault_email  |kopano@gmail.com     |txtReqNotes  |Please grant access|btnAccessSubmit  |


#Must Give a reason of declining
    Scenario Outline: I Decline Access
    Then I click on an element <AccessRequestBtnXpath> with xpath
      Then I click on an element <UserXpath> with xpath
      When I click on the <DeclineTag> with the text <DeclineText>
      And Switch back to default content
      When I enter <TextboxID> with ID <ReasonForDecline>
      When I click the <OkBtnID> Button with ID



      Examples:
  |AccessRequestBtnXpath|UserXpath|DeclineTag|DeclineText|TextboxID|ReasonForDecline|OkBtnID|
  |/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[3]/div|/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li[12]/a|div|Decline access request|rejectMessage|AutomationTesting|btnRejectMsgAccept|




    Scenario Outline: Approve Access
      Then I click on an element <AccessRequestBtnXpath> with xpath
      Then I click on an element <UserXpath> with xpath
      Then I click on an element <SenseLicenceXpath> with xpath
      When I click on the <SenseLicenceTag> with the text <SenseLicenceText>
      When I click on the <AcceptTag> with the text <AcceptText>
      And Switch back to default content
      When I click the <OkBtnID> Button with ID

      Examples:
  |AccessRequestBtnXpath|UserXpath|AcceptTag|AcceptText|SenseLicenceXpath|SenseLicenceTag|SenseLicenceText|OkBtnID|
  |/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[1]/div[2]/div[3]/div|/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li[12]/a|div|Approve access request|/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[5]/div[3]/div/div/div/div[3]/div[5]/div[2]/div/a/span[2]/b[1]|a|View|btnHideAlert|
#


