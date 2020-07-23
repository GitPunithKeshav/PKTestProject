@Managedatasources
  Feature: Manage Data Sources

##5
#Scenario Outline: Navigate to Data Sources
#
Scenario Outline: Navigate to Data Sources

Then I click on an element <Sidebarlink> with xpath
And I wait for the element to be saved
When I click on the <UserManagerTag> with the text <UserManText>
And I wait for the element to be saved
And I switch to an iframe
And I wait for the element to be saved
And I wait for the element to be saved


Examples:
|UserManagerTag|UserManText  |Sidebarlink|
|div           |Data Sources Manager|/html/body/div/div[1]/a/i|


##    ####Manage data sources (Module) Lite
Scenario Outline:Add new module data source (Module) Lite

#Then I click on an element <AllDataSourcesBtnXpath> with xpath
When I click the <AddSourceBtnID> Button with ID
And I wait for the element to be saved
When I enter <SourceNameID> with ID <SourceNameValue>
When I click the <SourceTypeDrpdwnID> Button with ID
And I select value <SourceTypeDrpdwnID> from a dropdown <DrpdownValue>
When I click the <AddBtnID> Button with ID



Examples:
|AddSourceBtnID|SourceNameID|SourceNameValue|SourceTypeDrpdwnID|DrpdownValue|AddBtnID|
|btnAdd  |sourceAddName|KopanoTesting_Automation|sourceAddType|Module|manageDataSources_AddPopup_AddSource|


Scenario Outline: Expand processes
Then I click on an element <ProcesseXpath> with xpath
Then I click on an element <InstanceXpath> with xpath
When I enter <TextFieldID> with ID <TextFieldValue>
When I enter <ValueFieldID> with ID <ValueFieldValue>
When I click the <SaveBtn> Button with ID


Examples:

|ProcesseXpath|InstanceXpath |TextFieldID|TextFieldValue|ValueFieldID|ValueFieldValue|SaveBtn|
|/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[1]/i|/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[1]/ul/li/a/i[1] |moduleOptionsTextField448e756e-fca5-4167-b6ce-f495e8af4488|view|moduleOptionsValueField448e756e-fca5-4167-b6ce-f495e8af4488|level|btnSave|
#


Scenario Outline: Add new module hierarchy  data sources
##Comment Need to create a hierarchy instance first

When I click the <AddSourceBtnID> Button with ID
And I wait for the element to be saved
When I enter <SourceNameID> with ID <SourceNameValue>
When I click the <SourceTypeDrpdwnID> Button with ID
And I select value <SourceTypeDrpdwnID> from a dropdown <DrpdownValue>
When I click the <AddBtnID> Button with ID



Examples:
|AddSourceBtnID|SourceNameID|SourceNameValue|SourceTypeDrpdwnID|DrpdownValue|AddBtnID|
|btnAdd  |sourceAddName|KopanoTesting_Automation|sourceAddType|Module|manageDataSources_AddPopup_AddSource|

Scenario Outline: Expand the hierarchical process

    #Need to create a hierarchical Process

Then I click on an element <ProcesseXpath> with xpath
Then I click on an element <Instance1Xpath> with xpath
#Then I click on an element <Instance2Xpath> with xpath
#Then I click on an element <Instance3Xpath> with xpath
When I enter <TextFieldID> with ID <TextFieldValue>
When I enter <ValueFieldID> with ID <ValueFieldValue>
When I click the <SaveBtn> Button with ID


Examples:

|ProcesseXpath|Instance1Xpath |TextFieldID|TextFieldValue|ValueFieldID|ValueFieldValue|SaveBtn|
|/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[1]/i|/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[1]/div/div/div[1]/div[2]/ul/li/ul/li[1]/ul/li/a/i[1] |moduleOptionsTextField448e756e-fca5-4167-b6ce-f495e8af4488|view|moduleOptionsValueField448e756e-fca5-4167-b6ce-f495e8af4488|level|btnSave|


Scenario Outline: Delete new data source
      #Click data source
      #Click dlete button
      #Click confirm button

Examples:


###        ############ Manage Data Sources (User Defined) lite

Scenario Outline: Add new user defined source
#Add second source
When I click the <AddSource> Button with ID
When I enter <NameSourceID> with ID <SourceValue>
When I click the <SourceTypeDrpdwnID> Button with ID
And I select value <SourceTypeDrpdwnID> from a dropdown <DrpdownValue>
When I click the <AddBtnID> Button with ID


Examples:
|SourceTypeDrpdwnID|DrpdownValue|AddBtnID|AddSource|NameSourceID|SourceValue|
|sourceAddType|User Defined|manageDataSources_AddPopup_AddSource|btnAddSourceItem|sourceItemName|UserDefined_DaisyTesting|


Scenario Outline: Edit user defined source

When I click on the <UserdefinedTagtype> with the text <UserdefinedText>
When I enter <NameSourceID> with ID <EditNameValue>
When I click the <SaveBtnID> Button with ID


Examples:
|UserdefinedTagtype|UserdefinedText         |NameSourceID|EditNameValue|SaveBtnID|
|a                 |UserDefined_DaisyTesting|txtSourceName|EditUserdefinedSource|btnSave|

Scenario Outline: Delete user defined source

When I click on the <UserdefinedTagtype> with the text <UserdefinedText>
When I click the <DeleteBtnID> Button with ID
Then Switch back to default content
When I click the <ConfirmDltBtn> Button with ID


Examples:
|UserdefinedTagtype|UserdefinedText         |DeleteBtnID|ConfirmDltBtn|
|a                 |UserDefined_DaisyTesting|btnDeleteSource|btnConfirmYes|