# M-Care MEA Project

A Flutter-based mobile application developed as a **first-semester college hackathon project**.

## About the Project

M-Care MEA is a student-built app created during my first semester for a college hackathon.  
The project demonstrates core mobile app development concepts using Flutter, including UI development, app navigation, and cross-platform deployment support.

## Tech Stack

- **Flutter** (cross-platform app framework)
- **Dart** (application logic)
- **GetX (`get`)** for app structure and navigation
- Platform targets generated for:
  - Android
  - iOS
  - Web
  - Windows
  - Linux
  - macOS

## Project Structure

- `lib/` – Main application source code
  - `main.dart` – App entry point using `GetMaterialApp`
- `assets/` – Fonts and static resources
- `android/`, `ios/`, `web/`, `windows/`, `linux/`, `macos/` – Platform-specific setup files
- `test/` – Test files
- `pubspec.yaml` – Dependencies, fonts, and project configuration

## Getting Started

### Prerequisites

Make sure you have installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Dart (bundled with Flutter)
- Android Studio / VS Code (with Flutter & Dart extensions)
- A connected device or emulator

### Run Locally

1. Clone the repository:

```bash
git clone https://github.com/MidhlajAm/m_care_mea_project.git
cd m_care_mea_project
```

2. Install dependencies:

```bash
flutter pub get
```

3. Run the app:

```bash
flutter run
```

## Notes

This repository reflects an early learning project built under hackathon time constraints.  
Future improvements can include feature expansion, backend integration, and cleaner production architecture.

## Author

**MidhlajAm**  
GitHub: [@MidhlajAm](https://github.com/MidhlajAm)
