# Unhandled Exceptions in Dart Async/Await JSON Handling

This example demonstrates common issues in Dart when dealing with asynchronous operations and JSON data.  Specifically, it highlights the importance of robust error handling to prevent crashes when unexpected data or network issues are encountered.

The `bug.dart` file shows code that attempts to fetch and parse JSON data.  However, it lacks comprehensive error handling.  The `bugSolution.dart` file offers improved code with better exception handling and checks for unexpected JSON structures.

**Key improvements in the solution:**

*   More robust error handling: Catches and handles `FormatException` during JSON decoding and `NoSuchMethodError` during JSON access.
*   Explicitly checks for the existence of keys before accessing them.
*   Provides informative error messages to help debug issues.