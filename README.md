# JSON Dart CLI App

A Dart CLI app showcasing the ability to parse JSON files into model classes in line with object-oriented programming concepts.

## Overview

The app contains several model files representing given data in a local JSON file. The data set is fairly complex and larger that the average practice files. 

## Features

- Demonstrates the use of factory constructors with a local list variable given the structure of a JSON file (a combination of lists and maps).
- Demonstrates the ability of converting back and forth from JSON file formatting.
- Does not include encoding or decoding of JSON files.
- Data is saved into the model classes and then manipulated through a local variable.
- Includes functionalities for listing objects and custom filtering functions.
- Demonstrats the ability to handle null objects, and throw exceptions where desired.

## Model Files

### `Department` Class

Contains data about a couple of departments with information about budgets and employees with thier respective projects.

### `Portfolio` Class

Contains multiple projects with associated details and teams.


## Examples of App Usage and Functionality

#### Example 1: Listing All Employees from the marketing Dept.

This example demonstrates how to list all employees in the marketing dept. The output is reformatted to JSON.

```dart
// Initialize varaibles
Department department = Department.fromJson(companyData['departments']);
late List<Employee> mktgEmployees;

// Assign values
mktgEmployees = department.marketing.employees ?? [];

// Print in JSON format
void showMktgEmployes() => print('''
Marketing Employees:
${mktgEmployees.map((employee) => employee.toJson())}
''');
```
#### Example 2: Showing Expenses from all departments

This example demonstrates hadling of null values and catching exception errors where desired.

```dart
// Initialize variables
late List<Expense>? engExpenses;
late List<Expense>? mktgExpenses;

// Assign Values
engExpenses = department.engineering.budget?.expenses;
mktgExpenses = department.marketing.budget?.expenses;

// Print in JSON Format
void showExpenses() {
    print('''
Engineering Expenses:
${valueIsNull(engExpenses) ? 'Exception caught for null value' : engExpenses?.map((expense) => expense.toJson())}
Marketing Expenses:
${valueIsNull(mktgExpenses) ? 'Exception caught for null value' : mktgExpenses?.map((expense) => expense.toJson())}
''');
}
```

Throwing exceptions for null values
```dart
bool valueIsNull(field) {
    var result = false;
    try {
      if (field == null) {
        result = true;
        throw Exception('Null Value');
      }
    } catch (_) {
      print('WARNING: Null Value caught\n');
    }
    return result;
  }
```

## How to Run

1. Ensure you have Dart installed on your machine.
2. Clone the repository or download the source code.
3. Navigate to the project directory in your terminal.
4. Run the app using the Dart command:
   ```bash
   dart run