# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build Commands

```bash
make                       # Build site + slides
make render                # Build site only
make slides                # Build and copy slides only
make preview               # Preview with live reload
make clean                 # Remove all generated files
```

## Architecture

Quarto website outputting to `docs/` for GitHub Pages. Source files are `.qmd`, config in `_quarto.yml`.

**Slides:** `slides.qmd` files in case studies are excluded from main render (`!**/slides.qmd`) and must be rendered individually. They use `embed-resources: true` for self-contained output.
