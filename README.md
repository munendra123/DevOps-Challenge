# DevOps Challenge (.NET)

## Introduction :wave:

This challenge utilises the broad range of skills required by a DevOps Engineer. It focuses on DevOps for a .NET 5 application.

In completing the challenge, you're welcome to change all aspects of the initial repository, including:
* Directory and file structure.
* Solution and project names.
* Namespaces and class names.
* Code, data, and settings files.
* NuGet packages and dependencies.
* This README!

The solution should represent best practices, even if the starting solution is lacking them.

You'll need .NET 5 and SQL Server Local DB to build and run the application locally. On a Mac or Linux device, you can update the connection string (in `appsettings.Development.json` and `DatabaseContextDesignTimeFactory.cs`) and use Docker to launch SQL Server Developer Edition.

## Scenario :blue_book:

You're a DevOps Engineer working in a small team to launch a new application. The management team will use the new application to view and report on daily sales data.

The development team have built a new API to ingest sales data from an existing system and provide endpoints for viewing and reporting the data. A future application will provide a user interface.

*Note: For simplicity of the solution, the API does not require authentication. Don't do this in a real application!*

## Challenge :question:

You should:

1. Introduce best practices into the solution to ensure a high-quality deliverable and a great developer experience.

2. Build and package the application as a container in a CI/CD pipeline ready for deployment

You'll need to select a CI/CD tool to complete the challenge. Feel free to use your preferred platform, such as GitHub Actions, Azure Pipelines, Circle CI, or Travis CI.

*Note: This challenge does NOT require infrastructure provisioning or deployment. This challenge has designed to be possible without incurring any licencing, hosting or tooling costs.*

## Best Practices Implemented:

1. Build once, deploy many times.

2. Containerising Multiple Services

3. Docker Vulnerability Scanning

4. Static Code Analysis (SCA)

5. Git Release Tags after Deployment

## Capabilities

1. Build, Scan and Publish Image
2. Static Code Analysis
3. Pull and Deploy Image
4. Release Version Tag



