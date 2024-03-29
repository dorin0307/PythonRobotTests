*** Settings ***
Documentation     create Quali API session and attach some file to the sandbox 
Library    Collections
Library	OperatingSystem
Library   ../Libraries/QualiAPILibrary.py	${connectivity.server_address}	${connectivity.quali_api_port}	${connectivity.admin_auth_token}	Global	${sandbox.id}
Suite Setup	Setup Process
Suite Teardown	Teardown Process

*** Test Case *** 
attch file to sandbox
	attach file
	sleep 60 sec

*** Keywords ***
Setup Process
	Log	"Currently in Setup"
	Create File	test.txt

attach file 
	Attach File To Reservation

sleep 60 sec
	sleep	60s

Teardown Process
	Log	"Currently in Teardown"
	Remove File	test.txt
