# Appointment App
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/Ahmed-Ebrahim17/appointment_app)

An application for managing and scheduling medical appointments, built with Flutter. This project focuses on providing a clean, user-friendly interface and is structured with a scalable, feature-first architecture.

<br>

## System Design

<img width="348" height="527" alt="Onboarding Screen" src="https://github.com/user-attachments/assets/f79882d5-abf3-4ac2-abc1-f106db53fc32" />

<br>

## Features

- **User Authentication:** Secure sign-up and login functionality.
- **Onboarding:** A welcoming and informative introduction for first-time users.
- **Home Screen:** A central dashboard placeholder for upcoming features.

## Tech Stack & Architecture

This project leverages a modern Flutter tech stack to ensure robustness, scalability, and maintainability.

-   **Framework:** [Flutter](https://flutter.dev/)
-   **Architecture:** Feature-First Clean Architecture
-   **State Management:** [flutter_bloc](https://pub.dev/packages/flutter_bloc) for predictable state management.
-   **Dependency Injection:** [get_it](https://pub.dev/packages/get_it) for service location.
-   **Networking:** [Dio](https://pub.dev/packages/dio) and [Retrofit](https://pub.dev/packages/retrofit) for type-safe REST API communication.
-   **Code Generation:** [Freezed](https://pub.dev/packages/freezed) for immutable data classes and unions, and [json_serializable](https://pub.dev/packages/json_serializable) for JSON serialization.
-   **Responsive UI:** [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) to adapt the UI to different screen sizes.
-   **Routing:** [go_router](https://pub.dev/packages/go_router) for declarative navigation.
-   **CI/CD:** [Fastlane](https://fastlane.tools/) for automating Android builds and distribution to Firebase App Distribution.

### Project Structure

The project follows a clean, feature-driven directory structure to promote separation of concerns and modularity.

```
lib/
├── core/
│   ├── di/               # Dependency injection setup (GetIt)
│   ├── helpers/          # Extension methods and helper functions
│   ├── networking/       # Dio, Retrofit, API services, and error handling
│   ├── routing/          # App routing logic (AppRouter, Routes)
│   └── theming/          # App-wide colors, styles, and theming
└── features/
    ├── login/            # Login feature module (data, logic, UI)
    ├── onBoarding/       # Onboarding feature module
    └── sign_up/          # Sign-up feature module
```

## Getting Started

To get a local copy up and running, please follow these steps.

### Prerequisites

Ensure you have the Flutter SDK installed on your machine.
- [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

### Installation & Execution

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/ahmed-ebrahim17/appointment_app.git
    ```

2.  **Navigate to the project directory:**
    ```sh
    cd appointment_app
    ```

3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

4.  **Run the code generator:**
    This project uses code generation for models, networking, and state management. Run the following command to generate the necessary files:
    ```sh
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

5.  **Run the application:**
    The project is set up with flavors for development and production.

    -   To run the development version:
        ```sh
        flutter run --flavor development --target lib/main_development.dart
        ```
    -   To run the production version:
        ```sh
        flutter run --flavor production --target lib/main_production.dart
