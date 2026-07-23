# madeofcode for Herdr

Theme snippets for [Herdr](https://herdr.dev), the terminal workspace manager
for AI coding agents.

Herdr themes aren't standalone files you drop into a themes directory — they're
`config.toml` overrides. Each file here is a ready-to-paste block: a base
theme name plus `[theme.custom]` color-token overrides derived from the
[madeofcode Vim colorscheme](../vim/colors/madeofcode.vim).

- `madeofcode.toml` — default
- `madeofcode-protan.toml` — protanopia-safe variant
- `madeofcode-tritan.toml` — tritanopia-safe variant

## Install

Herdr reads its config from:

- macOS/Linux: `~/.config/herdr/config.toml`
- Windows: `%APPDATA%\herdr\config.toml`

### If you don't have a config.toml yet

Append the file straight in:

```sh
mkdir -p ~/.config/herdr
cat madeofcode.toml >> ~/.config/herdr/config.toml
```

### If you already have a config.toml

Check first whether you already have `[theme]`, `[theme.custom]`, or `[ui]`
tables — TOML doesn't merge duplicate table headers, so a second copy of the
same header can clobber or conflict with the first, depending on the parser.

```sh
grep -nE "^\[theme|^\[ui\]" ~/.config/herdr/config.toml
```

- If none of those headers exist, it's safe to append the whole file as-is
  (see above).
- If `[theme]` / `[theme.custom]` already exist, replace their contents with
  the ones from this file instead of appending a second copy.
- If `[ui]` already exists, don't append a second `[ui]` header — merge the
  `accent = "#6fd3ff"` line (or the protan/tritan equivalent) into your
  existing `[ui]` table instead.

### Apply it

Validate the config, then reload without restarting panes:

```sh
herdr config check
herdr server reload-config
```

Or choose **reload config** from Herdr's global menu.

## Colorblind-safe variants

Swap `madeofcode.toml` for `madeofcode-protan.toml` or
`madeofcode-tritan.toml` in the steps above — same install process, different
hue tokens. Grays (`panel_bg`, `surface*`, `overlay*`, `subtext0`, `text`) are
identical across all three variants; only `accent`, `mauve`, `green`,
`yellow`, `red`, `blue`, `teal`, and `peach` change.

## Token mapping

Herdr's `[theme.custom]` exposes 15 tokens on top of a built-in base theme
(`catppuccin` here, since every token it defines is overridden anyway).
Grays are pulled straight from the palette already documented in the
[project README](../README.md#color-breakdown), ordered dark to light:

| Herdr token | Hex | madeofcode role |
|---|---|---|
| `panel_bg` | `#090a1b` | Background |
| `surface_dim` | `#12152e` | Background (raised) |
| `surface0` | `#1c1e30` | Background (panel) |
| `surface1` | `#363745` | Background (border) |
| `overlay0` | `#353c4f` | NonText / SpecialKey |
| `overlay1` | `#545454` | Special |
| `subtext0` | `#81818a` | Gray / muted |
| `text` | `#f8f8f8` | Foreground |
| `accent` | `#6fd3ff` | Type / Function / Tag (cyan) |
| `mauve` | `#c050c2` | Comment (magenta) |
| `green` | `#8fff58` | String |
| `yellow` | `#f1d950` | Yellow |
| `red` | `#ff3854` | Keyword / Operator |
| `blue` | `#0a9cff` | Constant / Number |
| `teal` | `#00ffbc` | Constant identifier |
| `peach` | `#cf6a4c` | Orange |

`ui.accent` is set to the same hex as `theme.custom.accent` since Herdr uses
it separately for highlights, borders, and navigation UI outside the theme
token set.
