# Manual Test Cases - VaultChat

*Note: Test cases marked with [Automation Candidate] are prioritized for Selenium/Postman automation.*

## Positive Scenarios

### TC-001: Successful User Registration [Automation Candidate]
* **Technique:** Use Case
* **Priority:** High
* **Preconditions:** User is on the registration page.
* **Test Data:** Username: `newuser_valid`, Password: `SecurePass123!`, Email: `valid@email.com`
* **Steps:**
  1. Enter valid username.
  2. Enter valid email.
  3. Enter valid password.
  4. Click the 'Register' button.
* **Expected Result:** Account is created successfully and user is redirected to the login page.
* **Actual Result:** Account was successfully created in the database and user was redirected to `/login` page as expected.
* **Status:** Passed

### TC-002: Successful Login [Automation Candidate]
* **Technique:** Use Case
* **Priority:** High
* **Preconditions:** User account exists. User is on the login page.
* **Test Data:** Username: `existing_user`, Password: `CorrectPassword`
* **Steps:**
  1. Enter valid username.
  2. Enter valid password.
  3. Click 'Login'.
* **Expected Result:** User is authenticated and redirected to the main dashboard/chat interface.
* **Actual Result:** Authentication successful, user redirected to the dashboard. Session token generated correctly.
* **Status:** Passed

### TC-003: Send a Secure Message [Automation Candidate]
* **Technique:** Use Case
* **Priority:** High
* **Preconditions:** User is logged in and has an existing contact.
* **Test Data:** Contact: `Alice`, Message: `Hello, this is a secure message!`
* **Steps:**
  1. Select the contact `Alice` from the contact list.
  2. Type the message in the input field.
  3. Click 'Send'.
* **Expected Result:** The message appears in the chat history with the contact.
* **Actual Result:** The message appeared immediately in the chat window. Confirmed in backend database that it was saved encrypted.
* **Status:** Passed

## Negative Scenarios

### TC-004: Login with Invalid Password
* **Technique:** Negative
* **Priority:** High
* **Preconditions:** User account exists. User is on the login page.
* **Test Data:** Username: `existing_user`, Password: `WrongPassword123`
* **Steps:**
  1. Enter the valid username.
  2. Enter the incorrect password.
  3. Click 'Login'.
* **Expected Result:** Login fails. An error message "Invalid credentials" is displayed. User remains on the login page.
* **Actual Result:** The login request was rejected (401 Unauthorized) and a red message "Invalid credentials" appeared on the UI.
* **Status:** Passed

### TC-005: Registration with Existing Username
* **Technique:** Negative
* **Priority:** Medium
* **Preconditions:** A user with the username `taken_user` already exists. User is on the registration page.
* **Test Data:** Username: `taken_user`, Password: `Password123`, Email: `test@test.com`
* **Steps:**
  1. Fill in the registration form using the `taken_user` username.
  2. Click 'Register'.
* **Expected Result:** Registration fails. An error message indicating the username is already taken is displayed.
* **Actual Result:** Registration failed with a 409 Conflict error and a message "Username is already taken" was displayed.
* **Status:** Passed

### TC-006: Create Contact with Empty Name
* **Technique:** Validation
* **Priority:** Medium
* **Preconditions:** User is logged in and on the "Add Contact" page.
* **Test Data:** Contact Name: `[Empty]`
* **Steps:**
  1. Leave the contact name field empty.
  2. Click 'Add Contact'.
* **Expected Result:** A validation error is displayed (e.g., "Contact name cannot be empty"). Contact is not created.
* **Actual Result:** Form submission was prevented. Field was highlighted in red saying "Contact name is required".
* **Status:** Passed

## Boundary / Equivalence Tests

### TC-007: Registration with Username Minimum Length
* **Technique:** Boundary Value
* **Priority:** Medium
* **Preconditions:** User is on the registration page. Assuming minimum username length is 3 characters.
* **Test Data:** Username: `ab` (invalid), `abc` (valid)
* **Steps:**
  1. Attempt to register with username `ab`.
  2. Attempt to register with username `abc`.
* **Expected Result:** `ab` triggers a validation error ("Username too short"). `abc` is accepted and registration proceeds.
* **Actual Result:** `ab` triggered error correctly. `abc` successfully created an account.
* **Status:** Passed

### TC-008: Send Message with Maximum Allowed Characters
* **Technique:** Boundary Value
* **Priority:** Medium
* **Preconditions:** User is logged in and in a chat view. Assuming max message length is 1000 characters.
* **Test Data:** Message 1: 1000 characters long. Message 2: 1001 characters long.
* **Steps:**
  1. Send Message 1.
  2. Attempt to send Message 2.
* **Expected Result:** Message 1 is sent successfully. Message 2 triggers an error or is truncated depending on requirements.
* **Actual Result:** Message 1 was sent successfully. Message 2 triggered an error toast saying "Message exceeds maximum length".
* **Status:** Passed

### TC-009: API - Modify Username with Invalid Characters
* **Technique:** Equivalence Partitioning
* **Priority:** Low
* **Preconditions:** User has a valid API token.
* **Test Data:** New username: `user@name!` (invalid characters)
* **Steps:**
  1. Send a PUT/PATCH request to the modify username endpoint with the token and new username.
* **Expected Result:** API returns a 400 Bad Request with a message stating invalid characters are not allowed.
* **Actual Result:** API returned `400 Bad Request` with response body `{"error": "Username can only contain alphanumeric characters."}`.
* **Status:** Passed

## Use Case / Workflow Tests

### TC-010: Complete User Onboarding Workflow
* **Technique:** Use Case / State Transition
* **Priority:** High
* **Preconditions:** System is running.
* **Test Data:** Unique user details, new contact name.
* **Steps:**
  1. Register a new user account.
  2. Login with the newly created account.
  3. Navigate to contacts and add a new contact.
  4. Send a first message to the new contact.
* **Expected Result:** The user can seamlessly transition from registration to logging in, creating a contact, and sending a message without encountering dead ends or errors.
* **Actual Result:** Workflow completed successfully from start to finish without errors.
* **Status:** Passed

### TC-011: API - Modify Message Workflow [Automation Candidate]
* **Technique:** Use Case
* **Priority:** Medium
* **Preconditions:** User has a valid API token and has already sent a message (requires message ID).
* **Test Data:** Valid Message ID, New content: `Updated message content` (or Empty string for negative case)
* **Steps:**
  1. Send a PUT request to the modify message endpoint with the message ID and new content.
  2. Fetch the message history via API or check UI (if applicable).
* **Expected Result:** API returns 200 OK. The message content is updated in the backend.
* **Actual Result:** When testing with an empty content string, the API crashed with `500 Internal Server Error`.
* **Status:** Failed
