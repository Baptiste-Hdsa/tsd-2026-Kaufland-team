# BUG-001 - Modifying message via API returns 500 Internal Server Error if content is empty

**Related Test Case:** TC-011 (Variant)
**Severity:** Major
**Priority:** High
**Environment:** Windows 11, Postman API Client, Local Backend Environment

**Steps to reproduce:**
1. Authenticate via API and obtain a valid token.
2. Create a message and note its `messageId`.
3. Send a `PUT` request to `/api/messages/{messageId}` with the following JSON body:
   ```json
   {
     "content": ""
   }
   ```
4. Observe the API response.

**Expected:** 
The API should return a `400 Bad Request` validation error indicating that message content cannot be empty.

**Actual:** 
The API crashes and returns a `500 Internal Server Error`.

**Evidence:**
- URL: `http://localhost:8080/api/messages/12`
- Log output:
  ```text
  java.lang.NullPointerException: content cannot be null or empty
  at com.vaultchat.service.MessageService.updateMessage(MessageService.java:45)
  ...
  ```
