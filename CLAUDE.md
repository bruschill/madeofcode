# madeofcode — project guidance

This repo ports the **madeofcode** theme across editors, terminals, and tools.
Each subdirectory holds the theme for one target (`vim/`, `jetbrains/`, `kitty/`,
`ghostty/`, `pi/`, `vscode/`, …).

## Source of truth: the vim colorscheme

**`vim/colors/madeofcode.vim` is the canonical definition of the theme.** When
adding a new port or changing colors in an existing one, derive syntax/token
colors from the vim highlight groups — do not invent new mappings or copy from
another port that may have drifted.

Concretely, when building or updating a theme:

- Read `vim/colors/madeofcode.vim` first and map its `hi` groups onto the target
  format's token scopes.
- Match the vim `guifg`/`guibg` hex values exactly. Notable mappings to respect:
  - `Comment` → `#c050c2` italic
  - `Keyword` / `Conditional` / `Statement` / `Operator` / `PreProc` → `#ff3854`
  - `Repeat` / `Exception` / `Type` / `Function` / `Structure` / `Tag` → `#6fd3ff`
  - `Constant` / `Number` / `Boolean` / `Character` → `#0a9cff` (blue), while
    constant *identifiers* like `rubyconstant` → `#00ffbc` (teal)
  - `String` → `#8fff58`, `Identifier` / `StorageClass` → `#99cf50`
  - Instance/parameter/global vars (`ruby*variable`, `rubyblockparameter`) → `#588aff`
  - Decorator-ish framework methods (`rubyrailsmethod`, …) → `#f1d950`
  - Cursor → `#00ffff`, Selection → `#05448d`, Search → `#233466`
- Base UI colors: background `#090a1b`, foreground `#f8f8f8`, muted `#81818a`,
  borders `#363745`.

The full palette also lives in the README color breakdown, but where the README
and the vim file disagree, **the vim file wins.**

## Conventions

- Keep each port self-contained in its own directory with install instructions
  added to `README.md`.
- Prefer one committed source file per theme as the single source of truth for
  that port; generate/package artifacts via a build script rather than checking
  them in (see `jetbrains/plugin/` for the pattern).
