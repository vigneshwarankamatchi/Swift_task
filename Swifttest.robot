*** Settings ***
Library    Selenium2Library
#Library    AppiumLibrary
Resource	../Settings.robot
Resource	../Variables/Variables.robot
Resource	../Keywords/Keywords.robot
Resource	../Keywords/GeneralKeywords.robot

***Variables***
${user_name}
${find_kyc}....
${search_user}
${find_button}
${find_bank}
${verify_KYC}
${scrolluntil}
${bank_name}



***Keywords***

*** Test Cases ***

	open browser    htte://bekycd04.swift.com:30161/kyc    browser=firefox
	wait until Element is visible    ${user_name}
	click Button    ${find_kyc}
	wait Until Element is visible
	Input Text    ${search_user}    RBOS
	click Button    ${find_button}
	Scroll page to location
	click Link    ${bank_name}
	Get Text    ${bank_detail}
	Element Text Should Be    ${bank_detail}

