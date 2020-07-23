#@AddChecklistModule
##2
#  Feature: Add Checklist Module Template
#
#Scenario Outline: Navigate to the Data Sources Manager
#
#
#Then I click on an element <Sidebarlink> with xpath
#And I wait for the element to be saved
#When I click on the <DataSourcesTagType> with the text <DataSourcesText>
#And I wait for the element to be saved
#And I switch to an iframe
#And I wait for the element to be saved
#
#
#
#
#Examples:
#|DataSourcesTagType|DataSourcesText         |Sidebarlink              |
#|a                 |Data Sources Manager    |/html/body/div/div[1]/a/i|
#
#Scenario Outline:Make a module a checklist module
#
#When I click on the <ChecklistBtnTagType> with the text <ChecklistBtnText>
#When I click the <AddSourceBtnID> Button with ID
#And I wait for the element to be saved
#When I enter <SourceNameID> with ID <SourceNameValue>
#
#
#When I click the <SourceTypeDrpdwnID> Button with ID
#And I select value <SourceTypeDrpdwnID> from a dropdown <DrpdownValue>
#
#
#
#
#Examples:
#|ChecklistBtnTagType|ChecklistBtnText|AddSourceBtnID|SourceNameID|SourceNameValue|SourceTypeDrpdwnID|DrpdownValue|
#|a                  |Checklist source|Add source  |sourceAddName|DaisyChecklist|sourceAddType|Checklist|
#
#Scenario Outline: Add checklist dropdown
#And I select value <ChecklistDrpDwnID> from a dropdown <DrpdownValue>
#When I click the <AddBtnID> Button with ID
#And I select value <AddChecklistID> from a dropdown <AddChecklistDrpdwnValue>
#
#Examples:
#|AddBtnID|ChecklistDrpDwnID|DrpdownValue|AddChecklistID|AddChecklistDrpdwnValue|
#|manageDataSources_AddPopup_AddSource|sourceAddChecklistUsage|Checklist type data source|sourceAddChecklistSource|JP_Parent|

