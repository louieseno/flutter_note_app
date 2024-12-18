# Flutter Note App

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

Generated by the [Very Good CLI][very_good_cli_link] 🤖

A simple note app.

---

## Getting Started 🚀

This project contains 3 flavors:

- development
- staging
- production

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ fvm flutter run --flavor development --target lib/main_development.dart

# Staging
$ fvm flutter run --flavor staging --target lib/main_staging.dart

# Production
$ fvm flutter run --flavor production --target lib/main_production.dart
```

_\*Flutter Note App was only tested on iOS, Web, and macOS._

---

## Architecture

### Core
This layer contains subdirectories for configurations, widgets(either stateful or stateless), and platform-specific helpers. 

### Data 
This layer handles the retrieval or manipulation of data from one or more source.


The data layer is split into two parts:
 - Data Source
    - Usually exposes APIs to perform different operation in manipulating data.
    
 - Model
    - Represent the core business objects, often reflecting real-world entities. These models possessed properties specific to them and encapsulated behavior through their methods.

This layer is the lowest level of the application and interacts with databases, network requests, and other asynchronous data sources.

_\*Flutter Note App only utilized local storage to mock the network call._

### Domain 
This layer orchestrate the flow of data between Data and Bloc layer.

In this layer you can add data transformation such as sorting, ordering, and filtering before handing the result to the business logic layer.

### Presentation 
The data layer is split into two parts:

 - Pages
    - This is the layer the user sees and interacts with to create events.

 - BLoC
    - Write all our business logic functionalities here and do most of our error handling and exceptions. 

---

[coverage_badge]: coverage_badge.svg
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli