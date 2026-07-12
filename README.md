madeofcode
==========

The TextMate theme madeofcode, reproduced across editors, terminals, and tools —
with minor tweaks for Ruby.

## At a glance

A dark theme on a deep indigo background with vivid, high-contrast accents:

| | | | | | |
|---|---|---|---|---|---|
| ![](https://placehold.co/24/090a1b/090a1b.png) `#090a1b` bg | ![](https://placehold.co/24/f8f8f8/f8f8f8.png) `#f8f8f8` fg | ![](https://placehold.co/24/ff3854/ff3854.png) `#ff3854` red | ![](https://placehold.co/24/8fff58/8fff58.png) `#8fff58` green | ![](https://placehold.co/24/0a9cff/0a9cff.png) `#0a9cff` blue | ![](https://placehold.co/24/f1d950/f1d950.png) `#f1d950` yellow |

See the [full color breakdown](#color-breakdown) for the complete palette.

## Editors

### Vim

Copy `vim/colors/madeofcode.vim` into `~/.vim/colors/` (or `~/.config/nvim/colors/`) and add `colorscheme madeofcode` to your config.

### JetBrains IDEs

Matching themes for IntelliJ IDEA, PyCharm, WebStorm, RubyMine, GoLand, and other JetBrains IDEs live in `jetbrains/`:

- `jetbrains/madeofcode.icls` — the **editor color scheme** (syntax highlighting)
- `jetbrains/madeofcode.theme.json` — the **IDE theme** (the whole UI: tool windows, tabs, menus, dialogs) that appears under **Appearance**

#### Editor color scheme

1. **Settings → Editor → Color Scheme**
2. Click the gear icon → **Import Scheme…**
3. Select `jetbrains/madeofcode.icls`
4. Pick **madeofcode** from the scheme dropdown and apply.

The editor scheme is dark (parented on Darcula), so it inherits Darcula for any editor elements not explicitly themed.

#### IDE theme (Appearance) — installable plugin

The UI theme in `jetbrains/madeofcode.theme.json` recolors the whole IDE chrome to match, and references the editor scheme above so both stay in sync. JetBrains loads UI themes from plugins, so `jetbrains/plugin/` packages it as one you can install directly.

Build the plugin zip (no Gradle needed — a theme is pure resources, so it just needs a JDK on your `PATH` for `jar`):

```sh
cd jetbrains/plugin
./build.sh
```

This produces `jetbrains/plugin/dist/madeofcode-theme-1.0.0.zip`. To install it:

1. **Settings → Plugins**
2. Click the gear icon → **Install Plugin from Disk…**
3. Select `jetbrains/plugin/dist/madeofcode-theme-1.0.0.zip`
4. Restart the IDE when prompted.
5. Choose **madeofcode** under **Settings → Appearance & Behavior → Appearance → Theme**.

Selecting the theme automatically applies the matching editor color scheme (via the `editorScheme` field in the theme). The build script regenerates the theme resources from the source `madeofcode.theme.json` and `madeofcode.icls`, so those two files remain the single source of truth.

### VS Code

A matching color theme for [Visual Studio Code](https://code.visualstudio.com/) lives in `vscode/`, packaged as a theme extension.

To use it without publishing, symlink (or copy) the `vscode/` folder into your VS Code extensions directory, then reload:

```sh
ln -s "$(pwd)/vscode" ~/.vscode/extensions/madeofcode
```

Then open the Command Palette → **Preferences: Color Theme** → **madeofcode**.

To build a shareable `.vsix` instead, install [`vsce`](https://github.com/microsoft/vscode-vsce) and package it:

```sh
cd vscode
npx @vscode/vsce package
```

That produces `madeofcode-1.0.0.vsix`, installable via **Extensions → … → Install from VSIX…**. The theme's syntax colors are derived from the vim colorscheme, which is the source of truth for the palette.

### Sublime Text

Matching schemes for [Sublime Text](https://www.sublimetext.com/) live in `sublime/`:

- `sublime/madeofcode.sublime-color-scheme` — the native Sublime format
- `sublime/madeofcode.tmTheme` — the TextMate format (madeofcode's ancestral format), which also drives [`bat`](https://github.com/sharkdp/bat) and [`delta`](https://github.com/dandavison/delta)

Copy them into your Sublime `Packages/User/` directory, then pick **madeofcode** under **Preferences → Color Scheme**:

```sh
cp sublime/madeofcode.* "$HOME/Library/Application Support/Sublime Text/Packages/User/"
```

For `bat`, point it at the tmTheme by copying it into `"$(bat --config-dir)/themes/"`, running `bat cache --build`, and setting `--theme=madeofcode` (or `BAT_THEME=madeofcode`).

### Zed

A matching theme for [Zed](https://zed.dev) lives in `zed/madeofcode.json`.

Copy it into Zed's themes directory and select it via the theme selector (`cmd+k cmd+t`):

```sh
mkdir -p ~/.config/zed/themes
cp zed/madeofcode.json ~/.config/zed/themes/
```

### Helix

A matching theme for [Helix](https://helix-editor.com/) lives in `helix/madeofcode.toml`.

Copy it into Helix's themes directory and set it in your config:

```sh
mkdir -p ~/.config/helix/themes
cp helix/madeofcode.toml ~/.config/helix/themes/
```

Then add `theme = "madeofcode"` to `~/.config/helix/config.toml` (or `:theme madeofcode` at runtime).

### Xcode

A matching theme for [Xcode](https://developer.apple.com/xcode/) lives in `xcode/madeofcode.xccolortheme`.

Copy it into Xcode's font-and-color themes directory, then pick **madeofcode** under **Settings → Themes**:

```sh
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
cp xcode/madeofcode.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
```

Restart Xcode if it's already running so the theme appears in the list.

### Eclipse

A matching theme for [Eclipse](https://www.eclipse.org/) lives in `eclipse/madeofcode.xml`, in the [Eclipse Color Theme](https://marketplace.eclipse.org/content/eclipse-color-theme) format.

Install the **Eclipse Color Theme** plugin from the Marketplace, then go to **Preferences → General → Appearance → Color Theme → Import a theme…** and select `eclipse/madeofcode.xml`.

## Terminals

### kitty

A matching color scheme for the [kitty](https://sw.kovidgoyal.net/kitty/) terminal emulator lives in `kitty/madeofcode.conf`.

To install, copy it into your kitty config directory and include it:

```sh
cp kitty/madeofcode.conf ~/.config/kitty/
```

Then add to `~/.config/kitty/kitty.conf`:

```conf
include madeofcode.conf
```

Reload with `ctrl+shift+f5` (or restart kitty) to apply.

### Ghostty

A matching color theme for the [Ghostty](https://ghostty.org) terminal lives in `ghostty/madeofcode`.

To install, copy it into Ghostty's themes directory and reference it from your config:

```sh
mkdir -p ~/.config/ghostty/themes
cp ghostty/madeofcode ~/.config/ghostty/themes/
```

Then add `theme = madeofcode` to `~/.config/ghostty/config`.

### Alacritty

A matching color theme for [Alacritty](https://alacritty.org/) lives in `alacritty/madeofcode.toml`.

Copy it into your Alacritty config directory and import it:

```sh
mkdir -p ~/.config/alacritty/themes
cp alacritty/madeofcode.toml ~/.config/alacritty/themes/
```

Then add to `~/.config/alacritty/alacritty.toml`:

```toml
[general]
import = ["~/.config/alacritty/themes/madeofcode.toml"]
```

### iTerm2

A matching color preset for [iTerm2](https://iterm2.com/) lives in `iterm2/madeofcode.itermcolors`.

Double-click the file to import it (or go to **Settings → Profiles → Colors → Color Presets… → Import…**), then select **madeofcode** from the Color Presets dropdown.

### Windows Terminal

A matching color scheme for [Windows Terminal](https://github.com/microsoft/terminal) lives in `windows-terminal/madeofcode.json`.

Open **Settings → Open JSON file**, add the object from `windows-terminal/madeofcode.json` to the `"schemes"` array, then set `"colorScheme": "madeofcode"` in a profile (or pick it under **Settings → Profiles → Appearance → Color scheme**).

## Tools

### Pi

A matching theme for the [Pi](https://github.com/earendil-works/pi) coding agent lives in `pi/madeofcode.json`.

To install, copy it into Pi's themes directory:

```sh
cp pi/madeofcode.json ~/.pi/agent/themes/
```

Then select **madeofcode** as your theme in Pi. It reuses the same palette and syntax colors as the Vim and JetBrains schemes.

## Web

Syntax-highlighting themes for rendering code on the web live in `web/`:

- **Shiki** — `web/shiki/madeofcode.json`, a VS Code / TextMate-compatible theme. Load it with `createHighlighter({ themes: [madeofcode], ... })` (import the JSON) and pass `theme: 'madeofcode'` when highlighting.
- **highlight.js** — `web/highlight.js/madeofcode.css`. Link it alongside highlight.js: `<link rel="stylesheet" href="madeofcode.css">`.
- **Prism** — `web/prism/madeofcode.css`. Link it alongside Prism: `<link rel="stylesheet" href="madeofcode.css">`.

## Color breakdown

The full palette shared across every editor, terminal, and tool.

### Base

| Swatch | Hex | Role |
|---|---|---|
| ![](https://placehold.co/24/090a1b/090a1b.png) | `#090a1b` | Background |
| ![](https://placehold.co/24/12152e/12152e.png) | `#12152e` | Background (raised) |
| ![](https://placehold.co/24/1c1e30/1c1e30.png) | `#1c1e30` | Background (panel) |
| ![](https://placehold.co/24/363745/363745.png) | `#363745` | Background (border) |
| ![](https://placehold.co/24/05448d/05448d.png) | `#05448d` | Selection |
| ![](https://placehold.co/24/f8f8f8/f8f8f8.png) | `#f8f8f8` | Foreground |
| ![](https://placehold.co/24/ffffff/ffffff.png) | `#ffffff` | White |
| ![](https://placehold.co/24/81818a/81818a.png) | `#81818a` | Gray / muted |

### Accents

| Swatch | Hex | Name |
|---|---|---|
| ![](https://placehold.co/24/ff3854/ff3854.png) | `#ff3854` | Red |
| ![](https://placehold.co/24/cf6a4c/cf6a4c.png) | `#cf6a4c` | Orange |
| ![](https://placehold.co/24/8fff58/8fff58.png) | `#8fff58` | Green |
| ![](https://placehold.co/24/99cf50/99cf50.png) | `#99cf50` | Olive |
| ![](https://placehold.co/24/00ffbc/00ffbc.png) | `#00ffbc` | Teal |
| ![](https://placehold.co/24/f1d950/f1d950.png) | `#f1d950` | Yellow |
| ![](https://placehold.co/24/e9c062/e9c062.png) | `#e9c062` | Gold |
| ![](https://placehold.co/24/0a9cff/0a9cff.png) | `#0a9cff` | Blue |
| ![](https://placehold.co/24/588aff/588aff.png) | `#588aff` | Blue (bright) |
| ![](https://placehold.co/24/6fd3ff/6fd3ff.png) | `#6fd3ff` | Cyan |
| ![](https://placehold.co/24/45c1ea/45c1ea.png) | `#45c1ea` | Light blue |
| ![](https://placehold.co/24/c050c2/c050c2.png) | `#c050c2` | Magenta |
| ![](https://placehold.co/24/d97ddb/d97ddb.png) | `#d97ddb` | Pink |
