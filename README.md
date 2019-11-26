# upcomingmovieapp

It is a mobile Multiplatform application developed with Flutter, with the purpose of displaying upcoming movies to be released by accessing the API The Api Movie Database (https://developers.themoviedb.org/).

### About the architecture

It has been separated into component packages making organization in code much more intuitive. Always focused on reusing created components.
Thus being able to separate codes referring to screens and services used and etc.

### To run the project

1. run the project you need to install sdk flutter on your machine (https://flutter.dev/)

2. In your terminal, go to  "upcomingoviedata project”:

    '$ cd Upcoming-Movies-App'

3. Select an android emulator:

    '$ flutter emulators —-launch Nexus_5X_API_27 (emulated name)'

4. After android emulator is running:

    '$ flutter run'

### Libraries and dependencies used

- **http: ^0.12.0+2:**
A composable, Future-based library for making HTTP requests.
This package contains a set of high-level functions and classes that make it easy to consume HTTP resources. It's platform-independent, and can be used on both the command-line and the browser
This library was used to make requests for api The movie database Api in service class
https://pub.dev/packages/http

- **query_params: ^0.6.1**
A flutter package to create URL query parameters.
This dependency was used to help with http requests to mount query params.
https://pub.dev/packages/query_params

- **flutter_paginator:**
A customizable pagination package for Flutter. This package can be used to fetch and display data from an API page by page.
It was used to dynamically paginate the movie list in the movie list component always requesting the next page of the list.
https://pub.dev/packages/flutter_paginator

### Screenshots

- [Movie List](screenshots/lista.jpeg)
- [Movie Detail 1](screenshots/detalhe1.jpeg)
- [Movie Detail 2](screenshots/detalhe2.jpeg)
- [Download app built for android](https://drive.google.com/file/d/1t286NzHczSVhiku8gl641tJVluuLg6Ft/view?usp=sharing)
