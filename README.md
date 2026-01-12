# Formula-Arch

A beige + light-blue Formula-1 inspired theme pack for Arch Linux (Hyprland / Wayland).

Ready-to-go:
- Install backs up your current configs
- Applies configs via symlinks
- Copies wallpapers/icons to ~/.local/share
- Reloads Hyprland + restarts Waybar/Mako

## Install
```bash
cd formula-arch
chmod +x scripts/*.sh scripts/ai/*.sh scripts/ai/providers/*.sh dotfiles/rofi/scripts/*.sh
./scripts/install.sh
```

## Uninstall
```bash
./scripts/uninstall.sh
```

## RaceControl AI
```bash
echo "fix wifi on arch" | ~/.local/share/formula-arch/bin/racecontrol.sh
```

## Keybinds
- SUPER + Enter: kitty
- SUPER + D: rofi launcher
- SUPER + Shift + D: power menu
- SUPER + A: RaceControl AI prompt
- SUPER + Q: close window
- SUPER + 1..5: switch workspace
- SUPER + Shift + 1..5: move window
- SUPER + S: screenshot region (grim+slurp+wl-copy)
