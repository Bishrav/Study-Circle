# Study Circle

Study Circle is a Dart package for organizing peer-learning groups. The project
uses a clean architecture so business rules stay independent from storage and
presentation concerns.

## Architecture

```text
lib/
└── src/features/study_circle/
    ├── application/  # Use-case orchestration
    ├── data/         # Repository implementations
    └── domain/       # Entities and repository contracts
```

The public API is exposed through `lib/study_circle.dart`.

## Getting started

```bash
dart pub get
dart test
dart run example/study_circle_example.dart
```

