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

## Ghostty

A matching color theme for the [Ghostty](https://ghostty.org) terminal lives in `ghostty/madeofcode`.

To install, copy it into Ghostty's themes directory and reference it from your config:

```sh
mkdir -p ~/.config/ghostty/themes
cp ghostty/madeofcode ~/.config/ghostty/themes/
```

Then add `theme = madeofcode` to `~/.config/ghostty/config`.
