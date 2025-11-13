# homebrew-tools

Homebrew tap for svanhalla tools - Professional CLI utilities for productivity and development.

## Quick Start

Install any tool directly (no need to add tap manually):
```bash
brew install --cask svanhalla/tools/<tool-name>
```

## Available Tools

| Tool | Version | Description |
|------|---------|-------------|
| **cheatd** | v1.3.8 | Personal cheat sheet management CLI with web interface |
| **svanhalla-cli** | v1.2.15 | Svanhalla CLI reklamprogram |

## Installation Examples

### cheatd - Cheat Sheet Manager
```bash
# Install
brew install --cask svanhalla/tools/cheatd

# Start web interface
cheatd api

# View help
cheatd --help
```

### svanhalla-cli - Reklamprogram
```bash
# Install
brew install --cask svanhalla/tools/svanhalla-cli

# View version
svanhalla-cli version

# View help
svanhalla-cli --help
```

## Updating Tools

To update any installed tool:
```bash
# Update Homebrew (required for Casks)
brew update

# Upgrade specific tool
brew upgrade --cask <tool-name>

# Or upgrade all tools
brew upgrade --cask
```

Example:
```bash
brew update
brew upgrade --cask cheatd
```

## Uninstalling

Remove any tool:
```bash
brew uninstall --cask <tool-name>
```

## Support

- **Issues**: Report bugs in the respective tool repositories
- **Documentation**: Each tool includes built-in help (`<tool> --help`)
- **Releases**: All releases are available at [svanhalla-releases](https://github.com/svanhalla/svanhalla-releases)
