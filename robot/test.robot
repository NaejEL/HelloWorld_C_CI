*** Settings ***
Library    OperatingSystem
Library    BuiltIn

*** Variables ***
${HELLO}        "Hello"

*** Test Cases ***
Test 1
    Log     ${HELLO}