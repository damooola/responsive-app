# Flutter Responsive Design

A Flutter project demonstrating responsive design principles for multiple screen sizes (mobile, tablet, and desktop).

## Overview

This project implements a responsive layout that adapts to different screen sizes using a combination of `LayoutBuilder` and custom scaffold widgets for mobile, tablet, and desktop views.

## Features

- Responsive layout that adapts to different screen sizes
- Custom layouts for:
  - Mobile (< 500px width)
  - Tablet (500px - 1100px width)
  - Desktop (> 1100px width)
- Reusable components

## Project Structure

```

lib/
├── pages/
│   ├── home_screen.dart
├── responsive/
│   ├── responsive_layout.dart
│   ├── mobile_scaffold.dart
│   ├── tablet_scaffold.dart
│   ├── desktop_scaffold.dart
│   └── const.dart
├── utils/
|   ├── my_colored_box.dart
|   └── my_tile.dart
├── main.dart

```

## Getting Started

To run this project:

1. Ensure you have Flutter installed
2. Clone the repository
3. Run `flutter pub get`
4. Run `flutter run`

## Key Components

### ResponsiveLayout

The `ResponsiveLayout` widget determines which scaffold to display based on the screen width:

- Mobile: < 500px
- Tablet: 500px - 1100px
- Desktop: > 1100px

### Scaffolds

Each scaffold (`MobileScaffold`, `TabletScaffold`, `DesktopScaffold`) provides a layout optimized for its target screen size:

- **Mobile**: 2x2 grid of colored boxes with a vertical list
- **Tablet**: 4x1 grid of colored boxes with a vertical list
- **Desktop**: 4x1 grid of colored boxes, drawer shown beside content, additional widget on the right

### Utility Widgets

- `MyColoredBox`: A simple gray box used in the grid layouts
- `MyTile`: A black container used in the list views

### Constants

`const.dart` contains shared styling and widgets:

- Background color
- AppBar configuration

## Contributing

Feel free to fork this project and submit pull requests with improvements or bug fixes.

## License

MIT License (LICENSE)
