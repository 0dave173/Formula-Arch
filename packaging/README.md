# Packaging (Arch)

This folder contains a starter PKGBUILD for Formula-Arch.

## Build
From inside this folder:
```bash
makepkg -si
```

## What the package does
Installs to:
- /usr/share/formula-arch

It does NOT overwrite ~/.config automatically (safety).
Use the bundled scripts after install:
- /usr/share/formula-arch/scripts/install.sh
