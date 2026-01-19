# Bry Pack

A Minecraft modpack focused on performance, quality of life improvements, and enhanced world generation.

**Version:** 1.0.3
**Minecraft:** 1.21.11
**Mod Loader:** NeoForge 21.11.31-beta
**Format:** [PackWiz](https://packwiz.infra.link/)

## Features

- **Performance** - Rendering optimizations and lag reduction
- **World Generation** - New biomes, structures, and enhanced Nether
- **Quality of Life** - Recipe browsing, inventory management, farming improvements
- **Movement** - Enhanced climbing, jumping, and controller support
- **Visuals** - Dynamic lighting, animations, and shader support
- **Building** - Diagonal placement, elevators, and building utilities

## Installation

### Using a Launcher with PackWiz Support
Import the pack using the `pack.toml` URL or download the exported `.mrpack` file.

### Manual Export
```bash
packwiz modrinth export
```
This creates a `.mrpack` file that can be imported into launchers like Prism Launcher or Modrinth App.

## Development

This pack uses the PackWiz format.

```bash
# Add a mod
packwiz modrinth add <mod-slug>

# Update all mods
packwiz update --all

# Refresh index after changes
packwiz refresh
```
