# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Minecraft modpack called "Bry Pack" using the **PackWiz** format. It targets Minecraft 1.21.11 on NeoForge 21.11.31-beta.

## PackWiz Commands

```bash
# Refresh index after modifying .pw.toml files
packwiz refresh

# Add a mod from Modrinth
packwiz modrinth add <mod-slug>

# Add a mod from CurseForge
packwiz curseforge add <mod-slug>

# Remove a mod
packwiz remove <mod-name>

# Update all mods
packwiz update --all

# Update a specific mod
packwiz update <mod-name>

# Export to .mrpack format for distribution
packwiz modrinth export
```

## Architecture

**Configuration Structure:**
- `pack.toml` - Main pack definition (name, version, Minecraft version, mod loader)
- `index.toml` - Auto-generated manifest of all pack files with SHA256 hashes
- `mods/*.pw.toml` - Individual mod configurations with download URLs and SHA512 hashes
- `resourcepacks/*.pw.toml` - Resource pack configurations
- `shaderpacks/*.pw.toml` - Shader pack configurations

**Key Design Patterns:**
- Each mod/pack is a declarative `.pw.toml` file containing metadata, download source (Modrinth/CurseForge), and integrity hashes
- `index.toml` must be regenerated via `packwiz refresh` after any manual edits to .pw.toml files
- Exports to `.mrpack` format are git-ignored; only source TOML files are tracked

## Mod Categories in This Pack

- **Performance**: Sodium, Iris, EntityCulling, ImmediatelyFast
- **World Gen**: Oh The Biomes We've Gone, Incendium, TerraBlender
- **QoL**: JEI, Jade, AppleSkin, Sophisticated Backpacks
- **Visuals**: Complementary Reimagined/Unbound shaders, Cozy Beds resource pack
