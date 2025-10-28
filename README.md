# Appointment App
[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/Ahmed-Ebrahim17/appointment_app)

An application for managing and scheduling medical appointments, built with Flutter. This project focuses on providing a clean, user-friendly interface and is structured with a scalable, feature-first architecture.

<br>

## System Design

<img width="348" height="527" alt="Onboarding Screen" src="https://github.com/user-attachments/assets/f79882d5-abf3-4ac2-abc1-f106db53fc32" />

<br>

## Features

- **Onboarding screen:** A welcoming and informative introduction for first-time users.
- **User Login:** A foundational login interface for user authentication.

## Tech Stack & Architecture

This project leverages a modern Flutter tech stack to ensure robustness, scalability, and maintainability.

- **Framework:** [Flutter](https://flutter.dev/)
- **Architecture:** Feature-based Clean Architecture
- **State Management:** [flutter_bloc](https://pub.dev/packages/flutter_bloc) for predictable state management.
- **Dependency Injection:** [get_it](https://pub.dev/packages/get_it) for service location.
- **Networking:** [Dio](https://pub.dev/packages/dio) and [Retrofit](https://pub.dev/packages/retrofit) for type-safe REST API communication.
- **Code Generation:** [Freezed](https://pub.dev/packages/freezed) for immutable data classes and unions, and [json_serializable](https://pub.dev/packages/json_serializable) for JSON serialization.
- **Responsive UI:** [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) to adapt the UI to different screen sizes.
- **Assets:** [flutter_svg](https://pub.dev/packages/flutter_svg) for high-quality vector graphics.
- **Localization:** [easy_localization](https://pub.dev/packages/easy_localization) for multi-language support.

### Project Structure

The project follows a clean, feature-driven directory structure to promote separation of concerns and modularity.

```
lib/
├── core/
│   ├── helpers/      # Extension methods and helper functions
│   ├── routing/      # App routing logic (AppRouter, Routes)
│   └── theming/      # App-wide colors and text styles
├── features/
│   ├── login/        # Login feature module
│   └── onBoarding/   # Onboarding feature module
└── main.dart         # Main application entry point
```

## Getting Started

To get a local copy up and running, please follow these steps.

### Prerequisites

Ensure you have the Flutter SDK installed. For installation instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

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
    This project uses code generation. Run the following command to generate the necessary files:
    ```sh
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

5.  **Run the application:**
    ```sh
    flutter run
