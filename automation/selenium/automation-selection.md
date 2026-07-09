# Automation Selection - Lab 4

## Selected test cases from Lab 3
| TC ID | Title | Automate? | Reason |
|---|---|---|---|
| TC-001 | Public navigation and unauthenticated instance interaction | Yes | Stable workflow, repetitive verification of landing elements |
| TC-002 | Valid user login flow and chat feature navigation | Yes | Critical regression path, stable IDs/selectors, repetitive user journey |
| TC-009 | Aesthetic theme toggle and layout responsiveness | No | Requires subjective visual judgment and human aesthetic evaluation |

## Explanation
* **TC-001 & TC-002** are stable, deterministic, and execute through repeatable user actions, making them ideal candidates for Selenium IDE automation.
* **TC-009** relies on visual presentation and subjective layout rendering that cannot be reliably evaluated via standard element or text assertions.