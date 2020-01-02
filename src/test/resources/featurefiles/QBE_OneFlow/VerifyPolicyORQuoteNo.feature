Feature: Validate the ability to validate quote/policy number

  @smoke
  Scenario Outline: Verify the ability to Able to validate quote/policy number
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
    Then Verify that the system is able to validate the policy or quote no

    Examples: 
      | keywordinsubject | policyorquotenoinsubject | expectedrequesttype | type   | priority |
      | closing check    | AB-A1234B9-MVA           | Closing Check       | Policy |       30 |
	
	@smoke
  Scenario Outline: Verify the ability to Able to validate Invalid quote/policy number
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
    Then Verify that the system is able to validate the Invalid policy or quote no

    Examples: 
      | keywordinsubject | policyorquotenoinsubject | expectedrequesttype | type   | priority |
      | closing check    | AB-A1234B9-MVA           | Closing Check       | Policy |       30 |

	@smoke
  Scenario Outline: Verify that the system has ability to validate the valid policy or quote no on entering it manually
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
    Then Verify that the system is able to validate the Invalid policy or quote no
    And Enter Cliam ID as "<claimID>"
    And Enter Insured Name as "<insuredname>"
    And Enter valid policy or quote no as "<policyorquoteno>"
    And Click on Submit button to close the case
    Then Verify that the manually entered Policy or quote no is updated as per the input "<policyorquoteno>"
    Then Verify that the system is able to validate the policy or quote no which are entered manually

    Examples: 
      | keywordinsubject | policyorquotenoinsubject | expectedrequesttype | type   | priority | claimID | insuredname | policyorquoteno |
      | closing check    | AB-A1234B9-MVA           | Closing Check       | Policy |       30 |         |             |                 |

	@smoke
  Scenario Outline: Verify that the system has ability to validate the Invalid policy or quote no on entering it manually
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
    Then Verify that the system is able to validate the Invalid policy or quote no
    And Enter Cliam ID as "<claimID>"
    And Enter Insured Name as "<insuredname>"
    And Enter Invalid policy or quote no as "<policyorquoteno>" and type "<type>"
    And Click on Submit button to close the case
    Then Verify the Error Message

    Examples: 
      | keywordinsubject | policyorquotenoinsubject | expectedrequesttype | type   | priority | claimID | insuredname | policyorquoteno |
      | closing check    | AB-A1234B9-MVA           | Closing Check       | Policy |       30 |         |             |                 |
