# Lab 5 - Robot Framework Automation Report

## Selected test cases
* **TC-001 (Executed as Test Case 1)**: Public Navigation and Unauthenticated Interaction.
    * *Reason for automation*: High-level business flow testing public layouts and unauthenticated structural navigation links.
* **TC-002 (Executed as Test Case 2)**: Valid User Login Flow and Chat Navigation.
    * *Reason for automation*: Critical and repetitive functional path verifying authentication processing, credentials handling, and routing.

## Tool used
* **Tool**: Robot Framework (Keyword-Driven Test Automation Framework)
* **Libraries Used**: `SeleniumLibrary`
* **Project File**: `automation/robot/vaultchat_tests.robot`

## Execution results
* **Total Automated Tests**: 2
* **Test 1 (TC-001)**: Passed successfully. Executed the public routing scenario by packing sequential actions into descriptive domain keywords.
* **Test 2 (TC-002)**: Passed successfully. Completed the full credentials input sequence using arguments, verified post-login dashboard loading, and completed successfully without errors.

## Assertions used
* **Checkpoint in Test 2**: `Page Should Contain Element` targeting `css=.bg-success\/10 > svg`.
    * *Purpose*: Inherited from Lab 4 to confirm that the success indicator badge is properly rendered on the user interface after redirection.
    * *Rule met*: Every automated scenario includes a built-in verification keyword to ensure explicit validation of the system state.

## Problems found & Keyword Enhancements
* **Keyword Synchronization**: Migrating from low-level actions to a keyword-driven structure required adding explicit wait keywords (`Wait Until Element Is Visible`). This handles asynchronous delays during local execution and prevents false-negative timing issues.

## What should remain manual
* **Visual appearance and aesthetic checking**: Reviewing subtle styling changes, color contrasts, or layout rendering alignment requires subjective human visual judgment and cannot be handled efficiently via keyword assertions.