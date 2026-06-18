madeofcode
==========

Textmate theme madeofcode reproduced for Vim, with minor tweaks for Ruby.

## Vim

Copy `vim/colors/madeofcode.vim` into `~/.vim/colors/` (or `~/.config/nvim/colors/`) and add `colorscheme madeofcode` to your config.

## JetBrains IDEs

A matching color scheme for IntelliJ IDEA, PyCharm, WebStorm, RubyMine, GoLand, and other JetBrains IDEs lives in `jetbrains/madeofcode.icls`.

To install:

1. **Settings → Editor → Color Scheme**
2. Click the gear icon → **Import Scheme…**
3. Select `jetbrains/madeofcode.icls`
4. Pick **madeofcode** from the scheme dropdown and apply.

It's a dark scheme (parented on Darcula), so it inherits Darcula for any UI elements not explicitly themed.

## kitty

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

