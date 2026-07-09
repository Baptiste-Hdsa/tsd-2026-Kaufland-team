# Lab 5 - Robot Framework Report

## 1. Tested application
* **Name**: VaultChat Team Messaging Application
* **URL**: http://localhost:3000

## 2. Automated test cases
| Test Case ID | Title | Type | Result |
|---|---|---|---|
| TC-001 | Public Navigation and Unauthenticated Interaction | Positive | Passed |
| TC-002 | Valid User Login Flow and Chat Navigation | Positive | Passed |

## 3. Keywords created
| Keyword | Purpose |
|---|---|
| `Open VaultChat Home Page` | Boots the browser instance and sets the standard responsive viewport. |
| `Explore Public Instance Elements` | Handles unauthenticated structural navigation checks. |
| `Maps To Login Section` | Handles client-side navigation to the secure login interface. |
| `Submit Credentials` | Parameters username and password variables into explicit form input targets. |
| `Verify Dashboard Is Accessible` | Validates DOM state progression and executes post-login element assertions. |

## 4. Test execution
* **Command used**: `robot automation/robot/tests/vaultchat_tests.robot`

## 5. Selenium vs Robot Framework Comparison
Transitioning to Robot Framework made our test cases significantly easier to read because the procedural steps are encapsulated within descriptive business-readable keywords. Reusing the login sequence with parameterized input data arguments was much simpler than repeating low-level browser actions. However, identifying and debugging stable DOM locators remained a shared challenge across both technologies. For this semester project, Robot Framework is highly suitable for building our regression test suite because it naturally handles form validations, catalog interactions, and authentication workflows. Furthermore, the automatically generated HTML logs and reports provide unparalleled transparency for team collaboration without needing additional third-party dependencies.

## 6. Problems and notes
* **Asynchronous Lifecycles**: Handled rendering latencies by implementing explicit synchronization checkpoints (`Wait Until Element Is Visible`) to ensure interface stability before firing event handlers.