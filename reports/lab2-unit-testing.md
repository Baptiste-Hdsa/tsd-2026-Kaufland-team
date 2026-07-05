# RatingTest Documentation

Suite covers `Rating.determineResultGrade(int)`. Standard boundary value analysis.

## Boundaries & Status

* **A (90-100)**: Tested 90, 100. Status: Pass.
* **B (80-89)**: Tested 80, 89. Status: Pass.
* **C (70-79)**: Tested 70, 79. Status: Pass.
* **D (60-69)**: Tested 60, 69. Status: Pass.
* **F (0-59)**: Tested 0, 59. Status: Pass.

## Exceptions

* **Negative inputs (< 0)**: Tested -1. Expects `IllegalArgumentException`. Status: Pass.
* **Above max (> 100)**: Tested 101. Expects `IllegalArgumentException`. Status: **FAIL**.

## Notes

The test `DetermineResultGradeShouldThrowExceptionForMoreThan100Points` fails. The source code `determineResultGrade` is missing the upper bound guard clause (`if (points > 100)`).