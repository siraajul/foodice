# foodice 🎲🍔🍕🍣

Welcome to **foodice**, a Flutter-powered dice game to help you decide what to eat! If you're ever feeling indecisive about your next meal, let the dice pick for you in a fun and simple way!

## How it works

1. Add a list of food options you'd like to choose from.
2. Roll the dice in the app, and it will randomly select one of the food options.
3. Enjoy your meal! 🎉

## Features

- Randomized food selection using dice roll animation.
- Customizable list of food options.
- Simple, intuitive Flutter UI.


## Getting Started

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/foodice.git
    ```

2. Navigate to the project directory:
    ```bash
    cd foodice
    ```

3. Install Flutter dependencies:
    ```bash
    flutter pub get
    ```

4. Run the app on your device or emulator:
    ```bash
    flutter run
    ```

## Customization

You can customize the list of food options directly in the code or later through UI enhancements. Just modify the `food_options` list in the relevant part of the app:

```dart
List<String> foodOptions = ["Pizza", "Burger", "Sushi", "Salad", "Pasta"];
