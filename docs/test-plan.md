# Test Plan - VaultChat

## 1. Tested Application
- **Name:** VaultChat
- **URL/Repo:** https://github.com/Baptiste-Hdsa/VaultChat
- **Purpose:** Secure messaging application allowing users to register, login, manage contacts, and send secured messages.

## 2. Scope
**What is tested:**
- Authentication (Registration and Login)
- Contact creation
- Messaging (Sending messages)
- Modifying messages (via API)
- Modifying username (via API)

**What is NOT tested:**
- Performance and Load testing
- Security penetration testing (beyond basic authentication)

## 3. Objectives
Verify that the core functionalities of VaultChat (secure messaging, authentication, and contact management) work as expected under normal usage conditions and that invalid inputs are handled gracefully.

## 4. Test Types
- Manual Testing
- UI Testing (for authentication, contact creation, and sending messages)
- API Testing (for modifying messages and username, as UI is missing)
- Functional Testing

## 5. Environment
- **Browser:** Google Chrome (Latest Version)
- **OS:** Windows 11
- **Tools:** Postman (for API tests), Selenium (planned for UI automation)

## 6. Risks
- Missing UI features for modifying messages and username means these must be tested exclusively via API, increasing complexity for UI automation.
- Potential instability if the backend service is not running or properly configured locally.
