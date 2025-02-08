# Unhandled Exceptions in Asynchronous Dart Operations

This repository demonstrates a common error in asynchronous Dart code: the improper handling of exceptions that occur during asynchronous operations.

The `bug.dart` file shows the original code with a potential issue.  The `bugSolution.dart` demonstrates improved error handling, which prevents the silent failure and provides more robust error reporting.

This example uses `http` package for making network requests. Make sure you have it installed before running the code: `pub add http`
