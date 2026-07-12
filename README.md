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

## Pi

A matching theme for the [Pi](https://github.com/earendil-works/pi) coding agent lives in `pi/madeofcode.json`.

To install, copy it into Pi's themes directory:

```sh
cp pi/madeofcode.json ~/.pi/agent/themes/
```

Then select **madeofcode** as your theme in Pi. It reuses the same palette and syntax colors as the Vim and JetBrains schemes.
