madeofcode
==========

The TextMate theme madeofcode, reproduced across editors, terminals, and tools —
with minor tweaks for Ruby.

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
