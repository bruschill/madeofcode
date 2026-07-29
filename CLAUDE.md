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
  - `String` → `#8fff58` **on background `#102522`** (same fg/bg pair on
    `Label`, `rubystringdelimiter`, `yamldocumentheader`); `Identifier` /
    `StorageClass` → `#99cf50`
  - `Comment` and `Todo` carry `guibg=#000000`
  - Instance/parameter/global vars (`ruby*variable`, `rubyblockparameter`) → `#588aff`
  - Decorator-ish framework methods (`rubyrailsmethod`, …) → `#f1d950`
  - Cursor → `#00ffff`, Selection → `#05448d`, Search → `#233466`
- Base UI colors: background `#090a1b`, foreground `#f8f8f8`, muted `#81818a`,
  borders `#363745`.

The full palette also lives in the README color breakdown, but where the README
and the vim file disagree, **the vim file wins.** The README additionally
defines UI-surface colors the vim file has no groups for — `#12152e` (raised
background) and `#1c1e30` (panel background) — use those for editor chrome that
needs more than the base background.

## Conventions

- **Every port ships three variants:** the base theme plus colorblind-safe
  `madeofcode-protan.*` and `madeofcode-tritan.*` files (e.g.
  `zed/madeofcode-protan.json`, `kitty/madeofcode-tritan.conf`). A new port is
  not done until all three exist. Derive the variant palettes from the README's
  protan/tritan remap tables so the substitutions stay consistent across ports.

- Keep each port self-contained in its own directory with install instructions
  added to `README.md`.
- Prefer one committed source file per theme as the single source of truth for
  that port; generate/package artifacts via a build script rather than checking
  them in (see `jetbrains/plugin/` for the pattern).
