#@ManageOrganisation
#
  Feature: Manage Organisation
##10
##    #############Adding Levels#####################
Scenario Outline: Add New Level using the plus Icon

Then I click on an element <Sidebarlink> with xpath
And I wait for the element to be saved
When I click on the <OrgManTag> with the text <OrgManText>
And I wait for the element to be saved
And I switch to an iframe
And I wait for the element to be visible


  Examples:
    |OrgManTag|OrgManText|Sidebarlink|
    |div|Organisation Manager|/html/body/div/div[1]/a/i|



  Scenario Outline: Add New Level using the add level button
    #working

    And I wait for the element to be saved
    When I click the <AddLevelButton> Button with ID
   When I click on the <LevelsBtnTagType> with the text <LevelsBtnText>
    When I click the <LevelID> Button with ID
    And I wait for the element to be visible
#    When I click on the <NodeTagtype> with the text <NodeText>
    When I enter <LevelNameID> with ID <LevelNameValue>



#Cannot rename because new nodes are given the same name and ID is changing everytime (we dont have an identifier)
    Examples:
      |AddLevelButton|LevelsBtnTagType|LevelsBtnText|LevelNameID     |LevelNameValue|LevelID|
      |btnAddLevel    |a              |Levels        |txtLevelName    |ButtonLevel  |j1_1 |


  Scenario Outline: Add New Level using the Icon
Working
    When I click the <AddIconID> Button with ID
    And I wait for the element to be visible
    When I click on the <LevelsBtnTagType> with the text <LevelsBtnText>
    And I wait for the element to be visible
    When I click the <LevelID> Button with ID
    When I enter <LevelNameID> with ID <LevelNameValue>

  Examples:
  |AddIconID      |LevelsBtnTagType|LevelsBtnText|LevelNameID     |LevelNameValue|LevelID|
  |iconBtnAddLevel|a               |Levels        |txtLevelName    |IconLevel      |j1_1 |


Scenario Outline: Add a new level Using the right click on the Levels Group Node

And I wait for the element to be saved
And I perform a right click action <LevelBtnID>
When I click on the <LevelElementType> with the text <LevelText>
  When I click the <LevelID> Button with ID
  And I wait for the element to be visible
  When I enter <LevelNameID> with ID <LevelNameValue>


Examples:
|LevelElementType|LevelText| LevelBtnID  |LevelNameID     |LevelNameValue|LevelID|
|a               |Add level|rootnode_anchor|txtLevelName    |RightClickLevel      |j1_1|



Scenario Outline: Add a five tier heirarchy level structure
#Working
And I wait for the element to be saved
  When I click on the <ParentLevelType> with the text <ParentLevelText>
  When I click the <AddIconID> Button with ID
  When I click on the <Child1LevelType> with the text <Child1LevelText>
  When I click the <AddIconID> Button with ID
  When I click on the <Child2LevelType> with the text <Child2LevelText>
  When I click the <AddIconID> Button with ID

Examples:

|ParentLevelType|ParentLevelText    |AddIconID        |Child1LevelType|Child1LevelText|Child2LevelType|Child2LevelText|
|a              |Hierachy Automation | iconBtnAddLevel |  a              | Kopano     |a              |Daisy          |


Scenario Outline: Rename Levels in the Details Section

And I wait for the element to be saved
Then I perform a right click function using xpath <NewNodeXpath>
And I wait for the element to be saved
When I click the <InputboxID> Button with ID
And I wait for the element to be saved
#    When I clear a inputbox using ID <InputboxID>
And I wait for the element to be saved
When I enter <InputboxID> with ID <FirstLevelName>
And I wait for the element to be saved
#    When I click on the <AddChildLevelType> with the text <AddChildLevelText>
And I wait for the element to be saved
When I click the <InputboxID> Button with ID
And I wait for the element to be saved
Then I perform a right click function using xpath <ChildNodeXpath>


Examples:
|FirstLevelName|InputboxID      |NewNodeXpath                                                          |ChildNodeXpath|
|Daisy2Testing |txtLevelName   |/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li[13]/a|/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li[13]/ul/li[3]/a              |




Scenario Outline: Rename Levels Using the Right Click Rename Option
 Working
And I wait for the element to be saved
Then I perform a right click function using xpath <NewNodeXpath>
And I wait for the element to be saved
When I click on the <RenameTagType> with the text <RenameText>
And I wait for the element to be saved
When I click the <InputboxID> Button with ID
And I wait for the element to be saved
When I enter <InputboxID> with ID <FirstLevelName>
And I wait for the element to be saved


Examples:
|FirstLevelName|InputboxID      |NewNodeXpath                                                           |RenameTagType|RenameText|
|Daisy2rightclick |txtLevelName |/html/body/div[1]/div[2]/div[2]/div/div/div[1]/div[2]/ul/li/ul/li[13]/a|a            |Rename|

##      #######################Add View ###########################
    Scenario Outline: Add new view and renaming the view
#working
      When I click the <LevelNodeID> Button with ID
      When I click on the <AddViewTagType> with the text <AddViewText>
      And I enter <ViewFieldXpath> using xpath <ViewName>



      Examples:
        | LevelNodeID   |AddViewTagType|AddViewText|ViewName           |ViewFieldXpath                                                                         |
        |rootnode_anchor|div           |Add view   |New view Automation| /html/body/div/div[2]/div[2]/div/div/div[3]/div[2]/div[2]/div[2]/table[2]/tbody/tr[19]/td[1]/div/input|



    Scenario Outline: Add an empty view
#working
      When I click the <LevelNodeID> Button with ID
      When I click on the <AddViewTagType> with the text <AddViewText>
      When I click the <AddLevelBtnID> Button with ID
      When I click the <AddLevelBtnID> Button with ID
      And Switch back to default content
      Then I click on an element <OkXpath> with xpath


      Examples:
        | LevelNodeID   |AddViewTagType|AddViewText|OkXpath|AddLevelBtnID|
        |rootnode_anchor|div           |Add view   |/html/body/div/div[4]/div/div/div[5]/div/div/div[2]/div[2]/div|Add level|

    Scenario Outline:  Assign views to an existing Level
#Working
      When I click on the <LevelTagType> with the text <LevelText>
      Then I click on an element <Checkbox1Xpath> with xpath
      Then I click on an element <Checkbox2Xpath> with xpath

      Examples:
        |LevelTagType|LevelText|Checkbox1Xpath|Checkbox2Xpath|
        |a|Hierachy Automation|/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[3]/table/tbody/tr[20]/td[2]/div/label/span|/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[1]/div[3]/table/tbody/tr[14]/td[2]/div/label/span|



    Scenario Outline: Delete New Added View
#working
      When I click the <LevelNodeID> Button with ID
      Then I click on an element <DeleteViewXpath> with xpath
      And Switch back to default content
      When I click the <ConfirmBtnID> Button with ID


      Examples:
        | LevelNodeID   |DeleteViewXpath|ConfirmBtnID|
        |rootnode_anchor| /html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div[2]/div[2]/table[2]/tbody/tr[19]/td[2]/div[1]|btnConfirmYes|


    Scenario Outline: Using Levels and views Module Control (System Manager) adding  new Solution
#Add a new solution

Then I click on an element <Sidebarlink> with xpath
And I wait for the element to be saved
When I click on the <OrgManTag> with the text <OrgManText>
And I wait for the element to be saved
And I switch to an iframe
And I wait for the element to be visible
When I click the <AddSolutionIconID> Button with ID

Examples:
|OrgManTag         |OrgManText               |Sidebarlink|AddSolutionIconID|
|div|System Manager|/html/body/div/div[1]/a/i|   btnAddSolution|


Scenario Outline:Editing an existing solution (Using levels and views)

When I click on the <SolutionTagType> with the text <SolutionText>
When I click the <AddSystemObjectID> Button with ID
When I click on the <ProcessTagType> with the text <ProcessText>
When I click on the <InstanceTagtype> with the text <InstanceText>

Then I click on an element <ModuleTemplateDrpdwnXpath> with xpath
When I click on the <ModuleTemplateTagType> with the text <ModuleTemplatetext>

Then I click on an element <DefualtLevelandViewDrpdwnXpath> with xpath
When I click on the <MouleControlTagType> with the text <MouleControlText>

Then I click on an element <LevelXpath> with xpath
When I click on the <LevelTagType> with the text <LevelText>

Then I click on an element <ViewDrpdwnXpath> with xpath
When I click on the <ViewTagType> with the text <ViewText>
When I click the <SaveBtnID> Button with ID
When I click the <SaveBtnID> Button with ID



Examples:
|SolutionTagType|SolutionText|AddSystemObjectID|ProcessTagType|ProcessText|InstanceTagtype|InstanceText|ModuleTemplateDrpdwnXpath|ModuleTemplateTagType|ModuleTemplatetext|DefualtLevelandViewDrpdwnXpath|MouleControlTagType|MouleControlText|LevelXpath|LevelTagType|LevelText|ViewDrpdwnXpath|ViewTagType|ViewText|SaveBtnID|
|a|AutomationSolution|btnAddSystemObject|a|[ New process ]|a|Unassigned instance|/html/body/div[1]/div[2]/div[2]/div/div/div[3]/div[2]/div/div[3]/div[1]/div/div/ul[1]/li[1]/div[2]/div[2]/div/div/a/span[2]/b[1]|a|A1|//*[@id="divDefaultLevelViewSelectMin"]/div/div/a/span[1]/ul/li|a|Module control|//*[@id="LevelViewsControlArea"]/div[1]/div/div[1]/a/span[1]/ul/li|a|Level|//*[@id="LevelViewsControlArea"]/div[2]/div/div[1]/a/span[1]/ul/li|a|View|btnSaveSystemManager|



Scenario Outline: Verify level and view list loads all relevant levels and views (viewer)

When I click on the <OrgManTag> with the text <OrgManText>
And I wait for the element to be saved
And I switch to an iframe
And I wait for the element to be visible
When I click on the <SolutionTagType> with the text <SolutionText>
#    When I click the <AddSystemObjectID> Button with ID
When I click on the <ProcessTagType> with the text <ProcessText>


Examples:
|OrgManTag         |OrgManText               | |SolutionTagType|SolutionText|ProcessTagType|ProcessText|
|div|System Manager| |a|AutomationSolution|a|[ New process ]|


Scenario Outline: Delete the system object

When I click on the <OrgManTag> with the text <OrgManText>
And I wait for the element to be saved
And I switch to an iframe
And I wait for the element to be visible
When I click on the <SolutionTagType> with the text <SolutionText>
#    When I click the <AddSystemObjectID> Button with ID
When I click on the <ProcessTagType> with the text <ProcessText>
When I click the <DeleteSystemObjectID> Button with ID


Examples:
|OrgManTag         |OrgManText               | |SolutionTagType|SolutionText|ProcessTagType|ProcessText|DeleteSystemObjectID|
|div|System Manager| |a|AutomationSolution|a|[ New process ]|btnDeleteSystemObject                                          |

