<p align="center">
<img src="./assets/logo-h-white.png" alt="Tuwaiq" width="400"/>
<br/>
<span style="font-size:30px">handiling data using json</span>
</p>


<hr/>

# Assignment 9

In this assignment i createed functions using json to
- display all marketing employees. 
- display the expenses of budget of each department. 
- check null values of companyData. 


### Repository data i used is  

```dart 
Map <String,dynamic>companyData = {
  "departments": {
    "engineering": {
      "employees": [
        {
          "id": "E001",
          "name": "Ahmed",
          "role": "Software Engineer",
          "contact": {
            "email": "ahmed@example.com",
            "phone": "+1234567890"
          },
        },
        {
          "id": "E002",
          "name": "Fatimah",
          "role": "DevOps Engineer",
          "contact": {
            "email": "fatimah@example.com",
            "phone": "+0987654321"
          },
          "projects": [
            {
              "projectId": "P001",
              "projectName": "Alpha",
              "roleInProject": "DevOps Specialist"
            }
          ]
        }
      ],
    },

    "marketing": {
      "employees": [
        {
          "id": "E003",
          "name": "Saeed",
          "role": "Marketing Manager",
          "contact": {
            "email": "saeed@example.com",
            "phone": "+1122334455"
          },
          "projects": [
            {
              "projectId": "P003",
              "projectName": "Beta",
              "roleInProject": "Project Lead"
            }
          ]
        },
        {
          "id": "E004",
          "name": "Noura",
          "role": "Content Creator",
          "contact": {
            "email": "noura@example.com",
            "phone": "+5544332211"
          },
          "projects": [
            {
              "projectId": "P003",
              "projectName": "Beta",
              "roleInProject": "Content Developer"
            },
            {
              "projectId": "P004",
              "projectName": "Delta",
              "roleInProject": "Content Strategist"
            }
          ]
        }
      ],
      "budget": {
        "total": 800000,
        "expenses": [
          {
            "item": "Advertising",
            "amount": 300000
          },
          {
            "item": "Market Research",
            "amount": 150000
          }
        ]
      }
    }
  },

  "projects": {
    "projectA": {
      "id": "P001",
      "name": "Alpha",
      "deadline": "2024-12-31",
      "team": [
        {
          "employeeId": "E001",
          "role": "Lead Developer"
        },
        {
          "employeeId": "E002",
          "role": "DevOps Specialist"
        }
      ]
    },

    "projectB": {
      "id": "P002",
      "name": "Beta",
      "deadline": "2024-09-30",
      "team": [
        {
          "employeeId": "E003",
          "role": "Project Lead"
        },
        {
          "employeeId": "E004",
          "role": "Content Developer"
        }
      ]
    },
    "projectC": {
      "id": "P003",
      "name": "Gamma",
      "deadline": "2025-03-31",
      "team": [
        {
          "employeeId": "E001",
          "role": "Contributor"
        }
      ]
    },
    "projectD": {
      "id": "P004",
      "name": "Delta",
      "deadline": "2025-06-30",
      "team": [
        {
          "employeeId": "E004",
          "role": "Content Strategist"
        }
      ]
    }
  }

};
```

## Key feature:
1. Usig dart project
2. “model” file to represent users object
3. function to display all marketing employees. This function should return a JSON data containing all marketing employees.
4. function to display the expenses of budget of each department. 
5. function to check null values of companyData. This function should return FormatException of error.

## Output Screenshot
- function to display all users
image.png

- function to display all marketing employees
![image](C:\Users\najwa\Desktop\dartbootcamp\assignment\Assignment-9\assignment9\assets\ass9.png)

- function to display the expenses of budget of each department.
![image](C:\Users\najwa\Desktop\dartbootcamp\assignment\Assignment-9\assignment9\assets\assi9-2.png)

- function to check null values of companyData.
![image](C:\Users\najwa\Desktop\dartbootcamp\assignment\Assignment-9\assignment9\assets\ass9-3.png)
![image](C:\Users\najwa\Desktop\dartbootcamp\assignment\Assignment-9\assignment9\assets\ass9-4.png)

## How To Use
To clone and run this application, you'll need [Git](https://git-scm.com) and [Visual Studio Code] 

```bash
# Clone this repository
$ git clone https: url

# Go into the repository
$ cd repo-name

# Open project in vs
$ code .

# Run the project 
$ dart run
```

## Contributing
#### I would be happy to have your ideas to improving the project. Please feel free to do so.
```bash
# Fork the project

# Create your feature branch
$ git checkout -b branch-name

# Commit your changes
$ git commit -m 'Add some commit'

# Push to the branch
$ git push

# Open a Pull Request

```


Thank you for your reading ❤️
