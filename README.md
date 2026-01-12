# Formula-Arch

A beige + light-blue Formula-1 inspired theme pack for Arch Linux (Hyprland / Wayland).

## What you get
- Hyprland (auto-tiling + smooth animations)
- Waybar (beige bar, blue focus)
- Rofi (launcher theme)
- Kitty + Starship (terminal)
- Mako (notifications)
- Custom GTK headerbar window buttons (SVG)
- "RaceControl" AI wrapper (local-first via Ollama)
- Safe install/uninstall (backs up your current configs, uses symlinks)

## Install
```bash
cd formula-arch
./scripts/install.sh
```

## Uninstall
```bash
./scripts/uninstall.sh
```

## AI (RaceControl)
```bash
echo "How do I fix wifi on Arch?" | ~/.local/share/formula-arch/bin/racecontrol.sh
```

Environment variables:
- `FORMULAARCH_AI_PROVIDER` (default: `ollama`)
- `FORMULAARCH_AI_MODEL` (default: `llama3`)

## Notes
- Wallpapers live in `assets/wallpapers/` and get copied to:
  `~/.local/share/formula-arch/wallpaper.png`
- GTK button theming affects apps with GTK headerbars (not every app).
