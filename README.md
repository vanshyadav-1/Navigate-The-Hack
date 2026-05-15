
<p align="center">
	<img src="https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white" alt="Flutter" height="28"/>
	<img src="https://img.shields.io/badge/Riverpod-2.0-green?style=for-the-badge" alt="Riverpod" height="28"/>
	<img src="https://img.shields.io/badge/Material%203-Theme-blue?style=for-the-badge" alt="Material 3" height="28"/>
</p>

# Navigate the Hack

<p align="center">
	<b>🚀 A beautiful, production-ready Flutter app for reading <a href="https://news.ycombinator.com/">Hacker News</a>.<br>
	Built with Clean Architecture, Riverpod, and Material 3.</b>
</p>

<p align="center">
  <img src="screenshots/home.png" width="300" alt="Navigate the Hack Preview">
</p>

---

## ✨ Features

- **📰 Top Stories Feed:** Paginated, lazy-loaded list of Hacker News top stories
- **🔍 Search:** Local search/filter across fetched stories
- **📖 Story Detail:** Full metadata, HTML-rendered story text, open in browser
- **💬 Nested Comments:** Recursive comment tree with depth indicators, collapse/expand
- **🌗 Dark Mode:** Toggle between light and dark themes
- **🔄 Pull to Refresh:** Swipe down to reload
- **∞ Infinite Scroll:** Loads more stories as you scroll
- **⚡ Shimmer Loading:** Skeleton placeholders while loading
- **❌ Error Handling:** User-friendly error states with retry
- **🌐 URL Launching:** Open articles in your browser

---

## 🏗️ Architecture

```text
lib/
├── core/           # Shared constants, network, theme, utils, widgets
├── features/       # Feature modules (home, story_detail)
├── routes/         # GoRouter configuration
├── services/       # API layer
└── main.dart       # App entry point
```

- **Pattern:** Clean Architecture + Feature-based
- **State Management:** Riverpod (StateNotifier, FutureProvider, AsyncValue)
- **Navigation:** GoRouter

---

## 🔗 APIs Used

| Endpoint | Description |
|----------|-------------|
| `GET /v0/topstories.json` | List of top story IDs |
| `GET /v0/item/<id>.json`  | Item details (story/comment) |

Base URL: [`https://hacker-news.firebaseio.com`](https://hacker-news.firebaseio.com)

---

## 📦 Packages Used

| Package           | Purpose                        |
|-------------------|--------------------------------|
| flutter_riverpod  | State management               |
| dio               | HTTP networking                |
| go_router         | Declarative routing            |
| flutter_html      | Render HTML comment/story text |
| timeago           | Relative time formatting       |
| url_launcher      | Open URLs in browser           |
| shimmer           | Loading skeleton animations    |
| equatable         | Value equality for models      |
| intl              | Internationalization utilities |

---

git clone <repo-url>
## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (latest stable)
- Android Studio / Xcode
- Android emulator, iOS simulator, or physical device

### Quick Start

```bash
# 1. Clone the repository
git clone <repo-url>
cd navigate_the_hack

# 2. Install dependencies
flutter pub get

# 3. Run the app
flutter run
```

### Build & Test

```bash
flutter build apk        # Build Android APK
flutter build ios        # Build iOS (macOS only)
flutter test             # Run tests
```

---

## 📸 Screenshots

| Home Screen | Story Detail | Comments Section |
|:---:|:---:|:---:|
| <img src="screenshots/home.png" width="250"> | <img src="screenshots/detail.png" width="250"> | <img src="screenshots/comments.png" width="250"> |

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

---

## 📄 License

This project is for educational / assignment purposes only.
