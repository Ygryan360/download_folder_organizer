#!/bin/bash

# Répertoire de base
DOWNLOADS_DIR="$HOME/Téléchargements"
LOG_FILE="$HOME/organiser_telechargements.log"

# Dossiers cibles
declare -A FOLDER_MAP=(
    [jpg]="Images" [jpeg]="Images" [png]="Images" [gif]="Images" [webp]="Images"
    [mp4]="Vidéos" [mkv]="Vidéos" [avi]="Vidéos" [mov]="Vidéos"
    [mp3]="Audio" [wav]="Audio" [flac]="Audio"
    [pdf]="Docs" [doc]="Docs" [docx]="Docs" [xls]="Docs" [xlsx]="Docs" [ppt]="Docs" [pptx]="Docs" [txt]="Docs"
    [zip]="Archives" [tar]="Archives" [gz]="Archives" [rar]="Archives" [7z]="Archives"
    [exe]="Installateurs" [appimage]="Installateurs" [deb]="Installateurs" [rpm]="Installateurs"
)

# Date actuelle pour le log
echo "==== $(date '+%Y-%m-%d %H:%M:%S') ====" >> "$LOG_FILE"

# Aller dans le répertoire de téléchargements
cd "$DOWNLOADS_DIR" || {
    echo "Erreur : Dossier $DOWNLOADS_DIR introuvable" >> "$LOG_FILE"
    exit 1
}

# Boucle sur tous les fichiers
for file in *; do
    if [[ -f "$file" ]]; then
        extension="${file##*.}"
        extension_lower=$(echo "$extension" | tr '[:upper:]' '[:lower:]')

        folder=${FOLDER_MAP[$extension_lower]}
        if [[ -n "$folder" ]]; then
            mkdir -p "$DOWNLOADS_DIR/$folder"
            mv "$file" "$DOWNLOADS_DIR/$folder/"
            echo "Déplacé : $file → $folder/" >> "$LOG_FILE"
        else
            mkdir -p "$DOWNLOADS_DIR/Autres"
            mv "$file" "$DOWNLOADS_DIR/Autres/"
            echo "Déplacé : $file → Autres/" >> "$LOG_FILE"
        fi
    fi
done

echo "Organisation terminée." >> "$LOG_FILE"
