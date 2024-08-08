
Map companyData = {
  "departments": { // first element in map starts here
    "engineering": {
      "employees": [ //list of maps
        {
          "id": "E001",
          "name": "Ahmed",
          "role": "Software Engineer",
          "contact": {
            "email": "ahmed@example.com",
            "phone": "+1234567890"
          }, // no projects
        }, //1
        {
          "id": "E002",
          "name": "Fatimah",
          "role": "DevOps Engineer",
          "contact": {
            "email": "fatimah@example.com",
            "phone": "+0987654321"
          },
          "projects": [ //list of maps
            {
              "projectId": "P001",
              "projectName": "Alpha",
              "roleInProject": "DevOps Specialist"
            }
          ]
        } //2
      ], //no budget
    }, //1st e inside departments

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
    } //2st e inside departments
  }, //first element in map end here

  "projects": { //second element in map start here
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
    }, //1

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
    }, //2
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
    }, //3
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
    } //4 
  } //second element in map  end here

};