@ResetPassword
Feature: Reset Password (User Profile, Login ans User Manager)


  Scenario Outline: As a user I want to login with valid credentials

    Given I have launched the browser
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <PasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved

    Examples:
      |UsernameValue  |UsernameID |PasswordValue|PasswordID |ButtonID      |HomepageFormID|
      |Isometrixsystem|txtUsername|1            |txtPassword|btnLoginSubmit|divPage       |


      Scenario Outline: Reset User Password (NO) (Profile)

        Then I click on an element <Sidebarlink> with xpath
        And I wait for the element to be saved
        When I click on the <UserProfileTag> with the text <UserProfileText>
        And I wait for the element to be saved
        And I switch to an iframe
        And I wait for the element to be saved
      And I wait for the element to be saved
      When I click the <ResetPasswordID> Button with ID
      And Switch back to default content
        When I click the <NoConfirmBtnID> Button with ID

      When I enter <CurrentPasswordID> with ID <CurrentPasswordValue>
      And I wait for the element to be saved
      When I enter <newPasswordID> with ID <newPasswordValue>
      And I wait for the element to be saved
      When I enter <confirmPasswordID> with ID <confirmPasswordValue>
      When I click the <SaveBtnID> Button with ID



      Examples:
        |UserProfileTag|UserProfileText  |Sidebarlink|ResetPasswordID |CurrentPasswordID|CurrentPasswordValue|newPasswordID|newPasswordValue|confirmPasswordID|confirmPasswordValue|SaveBtnID|NoConfirmBtnID|
        |div           |Profile|/html/body/div/div[1]/a/i|btnChangePassword|currentPassword | 123                |newPassword  |2               |confirmPassword  |confirmPasswordValue |btnPasswordSave|btnConfirmNo|

  Scenario Outline: Reset User Password and logout (Profile)

    When I click the <ResetPasswordID> Button with ID
    And Switch back to default content
#    When I click the <YesConfirmBtnID> Button with ID
    When I enter <CurrentPasswordID> with ID <CurrentPasswordValue>
    And I wait for the element to be saved
    When I enter <newPasswordID> with ID <newPasswordValue>
    And I wait for the element to be saved
    When I enter <confirmPasswordID> with ID <confirmPasswordValue>
    When I click the <SaveBtnID> Button with ID
    And Switch back to default content
    When I click on the <LogoutTagType> with the text <LogoutText>


    Examples:
      |ResetPasswordID |CurrentPasswordID|CurrentPasswordValue|newPasswordID|newPasswordValue|confirmPasswordID|confirmPasswordValue|SaveBtnID|LogoutTagType|LogoutText|
      |btnChangePassword|currentPassword | 123                |newPassword  |2               |confirmPassword  |confirmPasswordValue |btnPasswordSave|div|Logout|



    Scenario Outline:Log in

#    Given I have launched the browser
    When I click on the <SignInTagType> with the text <SigninText>
    When I enter <UsernameID> with ID <UsernameValue>
    When I enter <PasswordID> with ID <NewPasswordValue>
    When I click the <ButtonID> Button with ID
    And I wait for the element to be saved
      Then I validate that an element is loaded using ID <HomepageFormID>
    Examples:
      |UsernameValue  |UsernameID |NewPasswordValue|PasswordID |ButtonID      |HomepageFormID|SignInTagType|SigninText|
      |Isometrixsystem|txtUsername|2           |txtPassword|btnLoginSubmit|divPage       |div|Sign in again|

#####################Reset Password Manage Users####################
  Scenario Outline: Reset User Password (Selecting NO Option) (Manage Users)

    Then I click on an element <Sidebarlink> with xpath
    And I wait for the element to be saved
     When I click on the <UserManagerTag> with the text <UserManText>
     And I wait for the element to be saved
     And I switch to an iframe
    When I click on the <ExistingUserTagType> with the text <ExistingUserText>
    When I click the <ResetPasswordID> Button with ID
    And Switch back to default content
    When I click the <ConfirmNoBtn> Button with ID
    And I switch to an iframe


    Examples:
      |Sidebarlink|UserManagerTag |UserManText|ExistingUserTagType|ExistingUserText|ResetPasswordID|ConfirmNoBtn|
      |/html/body/div/div[1]/a/i| div                  |User Manager|a|Add Edit|btnResetPassword|btnConfirmNo|



  Scenario Outline: Reset User Password (Selecting YES Option) (Manage Users)

    When I click the <ResetPasswordID> Button with ID
    And Switch back to default content
    When I click the <ConfirmNoBtn> Button with ID
    And I switch to an iframe
    When I click the <ResetPasswordID> Button with ID
    When I click on the <ConfirmBtnTag> with the text <confirmBtnText>


    Examples:
      |ResetPasswordID|ConfirmBtnTag|confirmBtnText|ConfirmNoBtn|
      |btnResetPassword|div|Yes|btnConfirmNo|

  Scenario Outline:Access Reset password link (User Mail Box)
  #Need to get port Number

    Examples:

  Scenario Outline: Reset User Password (User Login)
    Given I have launched the browser
    When I click on the <ResetPasswordBtnTag> with the text <ResetPasswordBtnText>
    When I enter <ForgotUsernameID> with ID <ForgotUsernameValue>
    When I enter <ForgotEmailID> with ID <ForgotEmailValue>
    When I click the <ForgotSubmitBtnID> Button with ID


    Examples:
      |ResetPasswordBtnTag|ResetPasswordBtnText|ForgotUsernameID  |ForgotUsernameValue|ForgotEmailID |ForgotEmailValue|ForgotSubmitBtnID|
      |a                  |Reset password      |txtForgotUsername |DaisyTest          |txtForgotEmail|Daisy@gmail.com |btnForgotSubmit|