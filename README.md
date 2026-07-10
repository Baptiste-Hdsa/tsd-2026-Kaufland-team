Project Target: VaultChat – A self-hosted, end-to-end encrypted messaging platform built entirely in Rust.

Team Designation: Kaufland Team (University of Žilina, Faculty of Management Science and Informatics, Department of Software Technologies).

Execution Environment / Target Host: Local Docker stack operating on http://localhost:8584.
1. Executive Summary & Team Roles

The Kaufland Team conducted a rigorous, end-to-end quality assurance (QA) lifecycle assessment on VaultChat. Responsibilities were systematically distributed across team members:

    Malo Guillou: Test Manager (Strategic planning, scope validation, and test management).

    Baptiste Huot de Saint-Albin: Documentation & Repository Lead.

    Jonathan Le Bigot: Test Designer (Test case design and analysis).

    Louis-Auguste Ferry: API Tester.

    Pavel Butnaru: Automation Tester (UI and API automated execution).

The testing scope spanned low-level unit validations, manual exploratory and boundary analysis, automated functional UI tests using Robot Framework, and integration-level API validations via Postman.
2. Methodology & Technical Implementation across Labs
Lab 1 & 2: Unit Testing and Code Coverage Analysis

    Framework/Tools: Java, JUnit 5, Maven/Gradle.

    Technical Scope: Evaluated core business logic routines (such as grade/rating calculation components) using boundary value analysis and equivalence partitioning.

    Coverage Results: Achieved 100% metrics across Class, Method, Line, and Branch coverage parameters, validating correct execution for nominal inputs, edge boundaries, and invalid negative inputs.

Lab 3: Manual Test Case Design

    Technical Scope: Executed structured manual test scenarios targeting end-to-end user workflows, including user registration (TC-001), authentication flows (TC-002), secure message dispatch (TC-003), and negative input constraints (TC-004, TC-005, TC-006).

    Outcome: Mapped out high-priority, deterministic execution paths suited for subsequent test script automation.

Lab 4: Defect Tracking & Selenium IDE Assessment

    Tools: Selenium IDE (.side suites), Defect Lifecycle Management.

    Identified Defect (BUG-001): Submitting an empty update content string via the message modification API endpoint triggered an unhandled exception resulting in a 500 Internal Server Error instead of an expected clean validation rejection (400 Bad Request).

    UI Recording: Recorded baseline browser automation sequences via Selenium IDE to evaluate recording stability and limitations under dynamic application DOM structures.

Lab 5: Advanced UI Test Automation (Robot Framework)

    Framework/Libraries: Robot Framework v7.x, SeleniumLibrary, GeckoDriver/Firefox targeting http://localhost:8584.

    Architecture: Implemented a keyword-driven architecture with shared domain keywords in common_keywords.robot, decoupled into explicit functional test suites (login_tests.robot and project_tests.robot) under automation/robot/tests/.

    Synchronization Handling: Resolved asynchronous DOM rendering delays by incorporating explicit synchronisation checkpoints (Wait Until Element Is Visible) preventing race-condition failures during local containerized testing.

    Execution Status: Fully passed (PASS) across validation suites via command execution:
    Bash

    robot -d reports automation/robot/tests/

Lab 6: API Testing & Project Finalization

    Tools: Postman Web Version, Collection Runner.

    Test Architecture: Deployed an automated collection file (automation/postman/kaufland-team-api-tests.postman_collection.json) targeting the local backend instance (http://localhost:8584).

    Assertions & Validations: Integrated JavaScript-based response assertions (pm.test) verifying HTTP status codes 200 (data retrieval), 201 (successful resource creation), and 404 (negative validation for invalid route parameters).

3. Technical Findings & Lessons Learned

    DOM Asynchronicity Management: Automated web interactions under Firefox required robust explicit wait mechanics rather than strict hardcoded execution delays to accommodate asynchronous component mounting within the Rust backend stack.

    API Hardening: Reminders from defect analysis (BUG-001) highlighted the necessity of defensive programming and strict input sanitation at the REST controller boundary to prevent uncaught server exceptions during edge-case payloads.

    Continuous Integration Readiness: Structuring the repository into standardized automation/ and reports/ directories ensures complete traceability and reproducible validation for subsequent pipeline integration.
