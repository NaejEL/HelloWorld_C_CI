*** Settings ***
Library    OperatingSystem
Library    Process
Library    BuiltIn

*** Variables ***
${GIT_NAME}        HelloWorld_C_CI
${DIR_NAME}        helloworld
${PGM_NAME}        helloworld

*** Test Cases ***
Test 1
    ${result} =	    Run Process     pwd
    Log     ${result.stdout}

Test 2
    ${str} =	Catenate	SEPARATOR=/     ${GIT_NAME}     ${DIR_NAME}     ${PGM_NAME}
    ${result} =	    Run Process     ${str}
    Should Be Equal As Integers	${result.rc}	0
    Should Match	${result.stdout}	1
    Log     ${result.stdout}

Test 3
    ${str} =	Catenate	SEPARATOR=/     ${GIT_NAME}     ${DIR_NAME}     ${PGM_NAME}
    ${result} =	    Run Process     ${str}    test    Test
    Should Be Equal As Integers	${result.rc}	0
    Should Match	${result.stdout}	3
    Log     ${result.stdout}
