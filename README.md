<p align="center">
   <img src="./assets/logo-h-white.png" alt="Tuwaiq" width="300"/>
<br/>
   <span style="font-size:30px">Assignment 9 - Manage and Display Company Data</span>
</p>

<p align="center">
   <a href="https://tuwaiq.edu.sa/"><img src="https://img.shields.io/badge/website-000000?style=for-the-badge&logo=About.me&logoColor=white" alt="Website"></a>
   <a href="https://tuwaiq.edu.sa/"><img src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white" alt="Instagram"></a>
   <a href="https://tuwaiq.edu.sa/"><img src="https://img.shields.io/badge/TikTok-000000?style=for-the-badge&logo=tiktok&logoColor=white" alt="Tiktok"></a>
   <a href="https://tuwaiq.edu.sa/"><img src="https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white" alt="youtube"></a>
   <a href="https://tuwaiq.edu.sa/"><img src="https://img.shields.io/badge/Snapchat-FFFC00?style=for-the-badge&logo=snapchat&logoColor=white" alt="snapchat"></a>
   <a href="https://tuwaiq.edu.sa/"><img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white" alt="twitter"></a>
</p>
<hr/>


## Description

This Dart project provides functions to manage and display company data, including employees and budget expenses. It is a sample command-line application designed to demonstrate various functionalities related to company data management.


## Table of Contents

- [Description](#description)
- [Model Classes](#model-classes)
- [Functions](#functions)
- [Installation](#installation)
- [Wrote By](#wrote-by)
- [Supervisor By](#supervisor-by)

## Model Classes

The following model classes are defined in `lib/model` directory:
- `Contact` [file](lib%2Fmodel%2Fcontact.dart)
- `Employee` [file](lib%2Fmodel%2Femployee.dart)
- `Project` [file](lib%2Fmodel%2Fproject.dart)
- `Budget` [file](lib%2Fmodel%2Fbudget.dart)
- `Expense`[file](lib%2Fmodel%2Fexpense.dart)
- `Department` [file](lib%2Fmodel%2Fdepartment.dart)
- `CompanyData` [file](lib%2Fmodel%2Fcompany_data.dart)

## Functions

The following functions are implemented in `lip/functions` in [functions dart file](lib%2Ffunctions):
- `displayMarketingEmployees`: Returns a JSON string containing all marketing employees.
- `displayBudgetExpenses`: Returns a JSON string containing the expenses of the budget of each department.
- `checkNullValues`: Checks for null values in the company data and throws a `FormatException` if any are found.


## Concepts Applied and Lessons Learned

1. **Model-View-Controller (MVC) Architecture**:
    - The project follows the MVC architecture, separating the data models, business logic, and user interface. This is evident from the organization of model classes in the `lib/model` directory and functions in the `lib/functions` directory.

2. **Data Modeling**:
    - Various model classes such as `Contact`, `Employee`, `Project`, `Budget`, `Expense`, `Department`, and `CompanyData` are defined to represent the different entities in the application. This helps in structuring and managing the data efficiently.

3. **JSON Handling**:
    - Functions like `displayMarketingEmployees` and `displayBudgetExpenses` return data in JSON format, which is a common practice for data interchange in web applications.

4. **Error Handling**:
    - The function `checkNullValues` demonstrates error handling by checking for null values in the company data and throwing a `FormatException` if any are found. This ensures data integrity and robustness of the application.

5. **Command-Line Interface (CLI)**:
    - The project is designed to be run from the command line using the `dart run` command. This is a common practice for Dart applications, especially those that are not web-based.


## Lessons Learned

1. **Project Structure and Documentation**:
   The project is well-documented with a README.md file that includes sections on installation, usage, and functions. This helps users understand how to set up and run the project, as well as what functionalities are available.

2. **Organizing Code for Maintainability**:
    - By following the MVC architecture and organizing code into separate directories for models and functions, I learned how to structure a project for better maintainability and scalability.

3. **Effective Data Representation**:
    - Creating model classes for different entities taught me the importance of representing data in a structured and meaningful way, which simplifies data manipulation and retrieval.

4. **Importance of Error Handling**:
    - Implementing error handling mechanisms, such as checking for null values, highlighted the importance of validating data to prevent runtime errors and ensure the application runs smoothly.

5. **Working with JSON**:
    - Returning data in JSON format helped me understand how to work with JSON in Dart, which is essential for data interchange in modern web applications.

6. **Using CLI for Dart Applications**:
    - Running the project from the command line using `dart run` provided hands-on experience with CLI operations in Dart, which is useful for developing and testing Dart applications.


## Installation

To get started with this project, ensure you have Dart SDK version 3.5.0 or higher installed. You can check your Dart SDK version by running:

```sh
dart --version
```

## Usage
To run the project, execute the [assignment_9.dart](bin%2Fassignment_9.dart) file. It will:
- Display all marketing employees.
- Display the expenses of the budget of each department.
- Check for null values in the company data.
```sh
dart run
```

## Wrote By
- Fahad Alharbi - student at Tuwaiq Flutter Bootcamp 2024

## Supervisor By
- Fahad Alazmy
- Mjd Alghamdi