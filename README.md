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

A matching color scheme for IntelliJ IDEA, PyCharm, WebStorm, RubyMine, GoLand, and other JetBrains IDEs lives in `jetbrains/madeofcode.icls`.

To install:

1. **Settings → Editor → Color Scheme**
2. Click the gear icon → **Import Scheme…**
3. Select `jetbrains/madeofcode.icls`
4. Pick **madeofcode** from the scheme dropdown and apply.

It's a dark scheme (parented on Darcula), so it inherits Darcula for any UI elements not explicitly themed.

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

## Tools

### Pi

A matching theme for the [Pi](https://github.com/earendil-works/pi) coding agent lives in `pi/madeofcode.json`.

To install, copy it into Pi's themes directory:

```sh
cp pi/madeofcode.json ~/.pi/agent/themes/
```

Then select **madeofcode** as your theme in Pi. It reuses the same palette and syntax colors as the Vim and JetBrains schemes.

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
