### Slapping
![](https://img.shields.io/github/downloads/vanishdevs/vanish_slapping/total?logo=github)
![](https://img.shields.io/github/downloads/vanishdevs/vanish_slapping/latest/total?logo=github)
![](https://img.shields.io/github/contributors/vanishdevs/vanish_slapping?logo=github)
![](https://img.shields.io/github/v/release/vanishdevs/vanish_slapping?logo=github)

This script allows players to slap each other with a keybind or command. Players can perform the action on nearby players, with configurable options such as cooldown, proximity requirements, and sound effects. Below, you'll find everything you need to know about installing, configuring, and using this system effectively.

### Preview

[Watch the video](https://streamable.com/lbb6u1)

### Features

- Allows players to slap each other via keybind.
- Configurable cooldown to limit the frequency of the slap action.
- Option to require players to be close to each other to perform the slap.
- Plays a customizable sound effect when the slap action occurs.
- Configurable animation for the slap action, with adjustable settings for animation dictionary and name.

### Installation

- Copy the downloaded script files into your server's resource folder.
- Ensure the script is properly included in your server configuration file (`server.cfg`) to ensure it loads correctly when your server starts.
- Ensure that you have the necessary dependencies installed, ox_lib.

### Configuration

Configure the following parameters in the config:

- `CommandName`: The name of the command to trigger the slap action.
- `Keybind`: The keybind used to activate the command (default: 'Z').
- `Cooldown`: The cooldown time (in milliseconds) between consecutive uses of the command.
- `RequireClosePlayer`: A boolean value that determines whether the action requires a close player to be nearby.
- `ClosePlayerDistance`: The maximum distance (in meters) at which the action can be performed on a nearby player.
- `Sound`: Configuration for the slap sound effect:
  - `enable`: A boolean value that determines whether the sound will play.
  - `url`: The file path to the sound effect.
  - `volume`: The volume level of the sound (0.0 to 1.0).
- `Animation`: Configuration for the slap animation:
  - `dict`: The animation dictionary.
  - `name`: The specific animation name to play.

### Dependencies

Ensure that the following dependencies is installed:

- `ox_lib`: [Download here](https://github.com/overextended/ox_lib.git)
- `xsound`: [Download here](https://github.com/Xogy/xsound.git)
