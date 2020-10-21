# Engrave

Artist's Paradise!

Time: Sat (24 Oct 17:00)-Sun (25 Oct 18:00)

## Resources

- Engrave details [Google Docs](https://docs.google.com/document/d/1jGtJcr0pM-V8neih1VqIOKkHkuwOD-TcZvGESIY9IY0/edit?usp=sharing)

## Getting Started

The Boilerplate contains the minimal implementation required to create a basic flutter project.

## How to Use

**Step 1:**

Fork this repo

**Step 2:**

Download or clone forked repo :

``` git
git clone "Forked Repo URL"

```

**Step 3:**

Set main repo as upstream:

``` git
git remote add upstream https://github.com/Amitpatil215/Engrave.git
```

**Step 4:**

Fetch changes from the upstream repo:

[Every time you start working make sure ur up to date with upstream repo ]

```git
git rebase upstream/master    ...(prefer this)
OR
git pull upstream
```

**Step 5:**

Go to project root and execute the following command in console to get the required dependencies:  

```flutter
flutter pub get
```

---------

## Contribute:

**Step 1:**

Stage and Commit your changes with helpful message:  

```git
git add .
git commit -m "your message"
```

**Step 2:**

Push changes to your forked repo: 

```git
git push origin master
```

**Step 3:**

Create a pull request to **master** branch of main repo

*Note:*

* Send a PR for every new feature no matter how small changes are.
* We have github actions (CI) for dart code analyzation. Make sure while commiting you changes don't have any analyzer warnings.
* Write appropriate comments and commit messages



## Features:

* Login
* Sign Up
* Home Screen (Feed)
* Profile (Manage Users Profile)
* Category Screen

### Libraries & Tools Used

* [Provider](https://github.com/rrousselGit/provider) (State Management)

### Folder Structure
Here is the core folder structure which flutter provides.

```git
engrave/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```git
assets/
|-fonts/
|-images/
lib/
|- Model/
|- Provider/
|- Screen/
|- widgets/
|- main_properties/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```git
1- Model - Basic structure of objects used in application

2- Provider - Contains the State management for the project to connect the reactive data of your application with the UI, also includes functionality for CRUD operations from the backend.

3- screen — Contains all the ui of your project, contains sub directory for each screen.

  Naming Convention:  screens/Screen_name.dart

4- widgets — Contains the common widgets for your applications. For example, Button, TextField etc. By refactoring split widgets from screen.dart file

  Naming Convention:  widgets/Screen_name/widget_name.dart

5- main_properties
    5.1- routes.dart — This file contains all the routes for your application.
    5.2- theme.dart - This file contains basic theme for your application.

6- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

## Stuck while building?

- Create issue with error logs and code having that error
- Share the code using [gist](https://gist.github.com/)

## Backend

```git
1. Firebase Storgae: For storing images.
2. Firebase auth service: For email authentication.
3. MongoDB :
- For Storing image links, description, user profile.
- Must be hosted on  hosting service like Netlify, heroku or whichever suits the requirement.

*Requirement from database
      - API for performing Post, Get, Update, Delete deta.
      - Returns Json deta on get request.
      - For post,update request Json data would be provided.
```

Show Some Love by staring the repo!