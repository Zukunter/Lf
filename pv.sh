#!/bin/sh

# Die Datei, die gerade ausgewählt ist / The currently selected file
file=$1

case "$file" in
    # Nutze bat für alle Textdateien / Use bat for all text files
    *.zig|*.rs|*.cs|*.lua|*.sh|*.conf|*.json|*.md)
        bat --color=always --style=numbers --terminal-width="$2" "$file"
        ;;
    *)
        # Standard-Vorschau für alles andere / Default preview for everything else
        cat "$file"
        ;;
esac
