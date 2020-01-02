package com.cucumber.framework.PageObjects;

public interface CaseManagementCycleTriagerPageLoc {
	// complex WB

	String complex_workbasket = "//span[@id='Complex']";
	String Listof_cases = "//div[@class='oflowDivM ']/span/a[@title='Click here to open the object']";
	String case_list = "(//table)[3]/tbody/tr/td[3]";
	//String casecount_xpath="(//table)[3]/tbody/tr/td[3]";
	String First_case = "(//a[@alt='Click here to open the object'])[1]";
	String List_casedetailsvalues = "//div[@class='oflowDivM ']/span";
	String noteinfo = "//span[contains(text(),'The case has been routed')]";
	String notedisplayed = "//div[@data-expr-id='5d18d676df5a2001465b9611c9ee6a57de955a41_9']/div/div/div/span";
	String closebutton = "//i[@class='icons pi pi-circle-close']";

	// Exception WB

	String dashboard_xpath = "//span[text()='Dashboard']";
	String Exception_workbasket = "//span[@id='Exception']";
	String refresh = "(//i[@class='pi pi-refresh'])[2]";
	String refresh_CasesStage = "(//i[@class='pi pi-refresh'])[1]";

	// SLA details

	String SLA_Xpath = "//div[@data-expr-id='853673c9d3a4615c647b37d0640b93c0bf8dea25_4']"
			+ "/div/span/div/div[2]/div/div/div[2]/div/div/div/span";

	// out of scope

	String outofscope_xpath = "//span[text()=' Out-of-Scope ']";
	String sortcases = "//div[text()='Case']";
	// get next work
	String getnext_xpath = "//button[normalize-space(text()) ='Get next work']";
	String getnext_work = "//button[@title='Get next work']";
	String typeofreq_xpath = "//select[@id='5042139e']";
	String insured_xpath = "//input[@id='d8e7ef4d']";
	String policy_Quote_xpath = "//select[@id='a9b7b0e3']";
	String Quote_xpath = "//input[@id='fc9b59e6']";
	String submit_xpath = "//button[text()='Submit']";
	String casestatus = "//div[text()='Thank you for your input.']";
	String getnext = "//button[text()='Get next']";

	// Reassign work
	String actions_xpath = "//button[text()='Actions']";
	String reassign_xpath = "//span[text()='Reassign']";
	String transferto_xpath = "//select[@id='b0551189']";
	String workqueue_xpath = "//input[@id='0a1901c8']";
	String Complex_xpath = "//div[@data-harness-id='HIDC07E37662D6AB994EA16DE5126896CD2']/ul";
	String btnReassign_xpath = "//button[text()='Reassign']";
	

	// Reassign work

	String operator_xpath = "//select[@id='b0551189']";

	String compl_xpath = "//div[@id='po0']";

	// forward email:
	String forwardEmail_xpath = "//span[text()='Forward Email']";
	String tomail_xpath = "//input[@id='d7711f3c']";
	String bodymail_xpath = "//body[@aria-label='This is a rich text editor control.']";
	String mail_submit = "//button[text()='Send']";

	// Compose New Email
	String statusofcase="//div[@data-expr-id='3399e4ce8cad29b2fbe7b201d891037ca403ef3d_11']";
	String newemail = "//span[text()='Compose New Email']";
	String refreshaction="//span[text()='Refresh']";
	String audit="(//h2[text()='Audit'])";
	
	
	//reply mail
	
	String reply_xpath="//span[text()='Reply']";
	String ccto_xpath="//input[@id='e02af749']";
	
	//split case
	
	String Split_xpath ="//span[text()='Split']";
	String cancelsplit_xpath ="(//button[text()='Cancel'])[2]";
	String typeofsplitreq ="//select[@id='12f07c53']";
	String productcode ="//select[@id='67a2d93a']";
	String quoteorpolicy ="//select[@id='5e1699e3']";
	String Quotenumber = "//input[@id='0b3a70e6']";
	String insuredname = "//input[@id='2f46c64d']";
	String comment_xpath= "//textarea[@id='70254b5f']";
	String generatesplit= "//button[text()='Generate']";
	String splitaudit = "(//h2[text()='Split Cases'])";
	String splitauditproductcode = "//*[@id='$PpyWorkPage$pTransactionRequestList$l1']/td[3]/div/span";
	
	
	//case allocation 
	
	String CasePriority="//span[text()='Priority']//following::span[1]";
	String Duein_xpath="//span[text()='Due in']";
	
}
