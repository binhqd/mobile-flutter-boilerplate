# NAL App — Flutter Base

Flutter mobile app base scaffolded with Clean Architecture pattern. Targets iOS, Android, and Web.

## Tech Stack

- **Flutter** 3.41.6 (stable) / **Dart** 3.11.4
- **Architecture**: Clean Architecture (Presentation → Domain → Data)
- **Theme**: Material 3 with custom `ThemeData`
- **Platforms**: iOS, Android, Web

## Project Structure

```text
lib/
├── main.dart                                    # App entry point (NalApp)
├── core/
│   └── theme/
│       └── app_theme.dart                       # Material 3 light theme, input/button styles
└── features/
    └── auth/
        └── presentation/
            └── screens/
                └── login_screen.dart            # Login UI (email, password, validation)

test/
└── widget_test.dart                             # Login screen widget tests
```

## Current Features

### Login Screen

- Email field with validation (required, format check)
- Password field with show/hide toggle
- Form validation on submit
- Loading state (simulated 2s delay, no API)
- Forgot Password link (placeholder)
- Sign Up link (placeholder)
- Responsive layout (max width 400px, scrollable)

### Theme

- Material 3 (`useMaterial3: true`)
- Primary color: `#1A73E8`
- Rounded input fields (12px radius, filled)
- Full-width elevated buttons (52px height, 12px radius)

### Tests

- Widget test: renders all login screen elements
- Widget test: validates empty email and password fields

## Getting Started

### Prerequisites

- Flutter SDK (stable channel)
- Xcode (for iOS) or Android Studio (for Android)

### Run

```bash
flutter pub get
flutter run
```

### Test

```bash
flutter test
flutter analyze
```

## Architecture Guide

This project follows **Clean Architecture** with feature-first organization. When adding new features, create the following structure:

```text
lib/features/{feature_name}/
├── data/
│   ├── datasources/       # Remote (API) + Local (cache)
│   ├── models/             # DTOs with fromJson/toJson
│   └── repositories/       # Implementation
├── domain/
│   ├── entities/            # Pure Dart classes
│   ├── repositories/        # Abstract interfaces
│   └── usecases/            # Single-responsibility, call() method
└── presentation/
    ├── bloc/ (or providers/) # State management
    ├── screens/
    └── widgets/
```

Shared code goes in `lib/core/` (theme, network, error handling, DI, router, storage, widgets).
