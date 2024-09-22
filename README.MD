
# Pong Game with Godot 4.3

Welcome to the **Pong Game** built with Godot 4.3! This project is a simple implementation of the classic Pong game, designed to be modular, easy to understand, and fun to play. The project is structured to encourage clean coding practices and separation of concerns, making it an excellent starting point for beginners and a fun project for experienced developers.

## Features

- **Classic Pong Gameplay**: Two-player action with left and right paddles controlled by keyboard input.
- **Score Tracking**: Each player’s score is displayed and updated as points are scored.
- **Smooth Movement**: Paddles and ball movements are smooth and responsive.
- **Screen Boundaries**: Paddles cannot move outside the screen, and the ball bounces off the top and bottom boundaries.
- **Modular Design**: The code is structured into components, making it easy to extend and modify.

## Project Structure

```bash
├── Main.gd           # Main game script handling game flow
├── Paddle.gd         # Script handling paddle behavior and movement
├── Ball.gd           # Script handling ball behavior, including movement and collision
├── ScoreComponent.gd # Script handling score display and updates
├── ct.gd             # Script defining custom types (like Side)
├── scenes/           # Directory containing Godot scene files
│   ├── Main.tscn     # Main scene that integrates all components
│   ├── Paddle.tscn   # Paddle scene
│   ├── Ball.tscn     # Ball scene
│   ├── Score.tscn    # Score component scene
└── README.md         # This file
```

## Installation and Running the Game

### Prerequisites

- **Godot 4.3**: Make sure you have Godot 4.3 installed. You can download it from the [official website](https://godotengine.org/download).

### How to Run

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/pong-godot.git
   cd pong-godot
   ```

2. **Open the project in Godot**:
   - Launch Godot 4.3.
   - Click on "Import" and navigate to the cloned repository folder.
   - Select the `project.godot` file.

3. **Run the game**:
   - Once the project is opened in Godot, press the **Play** button or press `F5` to run the game.

### Controls

- **Left Paddle**: 
  - Move Up: `W`
  - Move Down: `S`
- **Right Paddle**:
  - Move Up: `Up Arrow`
  - Move Down: `Down Arrow`

## Extending the Game

This Pong game serves as a base for further development. Here are a few ideas to extend the game:

- **Single-player mode**: Implement AI for the second paddle.
- **Power-ups**: Add power-ups that temporarily affect the paddles or ball.
- **Multiplayer over Network**: Allow two players to play remotely over a network.

## Contributing

Contributions are welcome! If you have any improvements, bug fixes, or new features, feel free to open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


