# Lab 6 - Postman API Testing Report

## 1. Scope & Objectives
* **Tool Used**: Postman Web Version / Collection Runner
* **Collection Location**: `automation/postman/kaufland-team-api-tests.postman_collection.json`
* **Objective**: Build an API testing collection covering positive data retrieval/creation and negative error scenarios (404 handling).

## 2. Tested Endpoints & Assertions
1. **GET All Users**: Validates HTTP status `200` and ensures the returned JSON array is not empty.
2. **GET User by ID**: Validates HTTP status `200` and checks the structural presence of the `username` field.
3. **POST Create Resource**: Validates successful data submission with HTTP status `201` and returned object ID generation.
4. **GET Resource Not Found (Negative Test)**: Validates correct error handling by expecting HTTP status `404` for invalid resource IDs.

## 3. Project Finalization Confirmation
* The repository structure (`automation/postman/`, `reports/`) is complete and structured for the final project submission.
EOF
