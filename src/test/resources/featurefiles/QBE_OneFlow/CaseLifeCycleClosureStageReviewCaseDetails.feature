Feature: Case Life Cycle Closure Stage - Review Case Details

	@smoke
  Scenario Outline: Case Life Cycle - Closure Stage - Review Case Details
    Given Open the browser and navigate to the url
    Given Login to two user one after another and get the sum of priorities of the each user with respect to "<keywordinsubject>" and "<policyorquotenoinsubject>"
    Given User send a mail to QBE with subject "<keywordinsubject>" and "<policyorquotenoinsubject>"
    Then Login to the user which has low work load
    Then Login should be successful
    And Click on refresh button
    And Sort the list of cases with recent created case
    Then Open the case and verify that the case is created and routed to user properly and priority with "<priority>".
    Then The Request Type is autopopulated as per the expected request type "<expectedrequesttype>"
    And The Type is displayed as per the expected type "<type>"
    And The Policy or Quote number is autopopulated as it is available in the mail "<policyorquotenoinsubject>"
    And Verify the Policy Status drop down have expected values and select "<policyStatus>"
    And Enter Cliam ID as "<claimID>"
    And Enter Insured Name as "<insuredname>"
    And Enter Underwriter Name as "<underwritername>"
    And Verify Under writer region drop down values and select "<underwriterregion>"
    And Provide Expiration and Received date if the requirest type is as "<expectedrequesttype>"
		And Click on Submit button to resolve the case
		Then Verify Case is resolved-Completed
		Then Verify RquestType is displayed as expected "<expectedrequesttype>" at Information tab
		Then Verify Policy Status (QUW Status) is displayed as expected "<policyStatus>" at Information tab
		Then Verify Cliam ID is updated as expected "<claimID>" at Information tab 
		Then Verify Insured Name is updated as expected "<insuredname>" at Information tab
		Then Verify UnderWriter Name is updated as expected "<underwritername>" at Information tab
		Then Verify UnderWriter Region is updated as expected "<underwriterregion>" at Information tab
		Then Verify the type as expected "<type>" at Information tab
		Then Verify the Policy Or Quote no is updated as expected "<policyorquotenoinsubject>"
		Then Verify the Product Code is updated as expected 
		Then Verify the Priority is updated as expected "<priority>" 
    Then click on logout link and close the browser

    Examples: 
      | keywordinsubject | policyorquotenoinsubject | expectedrequesttype | type   | priority |policyStatus|claimID|insuredname|underwritername|underwriterregion |
      | closing check    | AB-A1234B9-MVA           | Closing Check       | Policy |       30 |						 |			 |					 |							 |   								|
