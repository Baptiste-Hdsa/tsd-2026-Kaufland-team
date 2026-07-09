Lab 4 - Selenium Automation Report
Selected test cases

    TC-001 (Executed as test1): Navigation, interaction with public components, and exploration of instance elements without authentication.

        Reason for automation: Stable, repeatable interaction flow with static/public page components and navigation links.

    TC-002 (Executed as test2): Valid user login flow, navigating to chat features, interaction with dashboard elements, and verifying status indicators.

        Reason for automation: Critical and repetitive functional scenario that ensures core authentication and post-login UI features work correctly.

Tool used

    Tool: Selenium IDE (Browser extension for recording and playback)

    Project File: Kaufland-team.side

Execution results

    Total Selenium tests: 2

    Test 1 (test1): Passed successfully (13 steps executed, including opening the base URL, resizing, and clicking through public layout links).

    Test 2 (test2): Passed successfully (16 steps executed, including credentials input using type commands for username/password, navigation to user dashboard, and UI interactions).

Assertions used

    Checkpoint in test2: assertElementPresent targeting css=.bg-success\/10 > svg.

        Purpose: Verifies that the expected success/status indicator element is properly rendered and present in the UI following user actions.

        Rule met: Every test contains at least one checkpoint/assertion to validate the expected system behavior.

Problems found

    Timing & Element Loading: Real-time web applications often feature asynchronous rendering. Initial locator attempts using generic classes (like .mb-8) required stable positioning and appropriate pacing during playback to prevent "element not found" timing issues.

What should remain manual

    Visual appearance, aesthetic consistency, and layout accuracy: Checking fine details such as precise spacing, font rendering, color gradations, or handling unexpected dynamic content changes requires human visual judgment and should remain manual.