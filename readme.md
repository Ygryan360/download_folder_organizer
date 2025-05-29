# 📁 Organisateur de Téléchargements

Un script bash simple et efficace pour organiser automatiquement vos fichiers de téléchargements par type.

## ✨ Fonctionnalités

- **Organisation automatique** : Trie vos fichiers par extension dans des dossiers dédiés
- **Journalisation complète** : Enregistre toutes les opérations avec horodatage
- **Support multi-formats** : Images, vidéos, audio, documents, archives et installateurs
- **Gestion des erreurs** : Vérification de l'existence du dossier de téléchargements
- **Dossier "Autres"** : Les fichiers non reconnus sont rangés automatiquement

## 🗂️ Structure d'organisation

Le script organise vos fichiers dans les dossiers suivants :

| Type de fichier | Extensions supportées | Dossier de destination |
|----------------|----------------------|----------------------|
| **Images** | jpg, jpeg, png, gif, webp | `Images/` |
| **Vidéos** | mp4, mkv, avi, mov | `Vidéos/` |
| **Audio** | mp3, wav, flac | `Audio/` |
| **Documents** | pdf, doc, docx, xls, xlsx, ppt, pptx, txt | `Docs/` |
| **Archives** | zip, tar, gz, rar, 7z | `Archives/` |
| **Installateurs** | exe, appimage, deb, rpm | `Installateurs/` |
| **Autres** | Tous les autres formats | `Autres/` |

## 🚀 Installation et utilisation

### Prérequis
- Système Linux avec bash
- Dossier `~/Téléchargements` existant

### Installation

1. **Clonez le repository**
   ```bash
   git clone https://github.com/Amedon-Roland/organize_dowload_folder.git
   cd organize_dowload_folder
   ```

2. **Rendez le script exécutable**
   ```bash
   chmod +x organiser_telechargements.sh
   ```

3. **Exécutez le script**
   ```bash
   ./organiser_telechargements.sh
   ```

### Automatisation (optionnel)

Pour exécuter le script automatiquement, ajoutez-le à votre crontab :

```bash
# Exécuter toutes les heures
0 * * * * /chemin/vers/organiser_telechargements.sh

# Exécuter tous les jours à 23h00
0 23 * * * /chemin/vers/organiser_telechargements.sh
```

## 📋 Journalisation

Le script génère un fichier de log détaillé dans `~/organiser_telechargements.log` qui contient :
- Horodatage de chaque exécution
- Liste de tous les fichiers déplacés
- Destination de chaque fichier
- Messages d'erreur éventuels

Exemple de log :
```
==== 2025-05-29 14:30:15 ====
Déplacé : document.pdf → Docs/
Déplacé : photo.jpg → Images/
Déplacé : video.mp4 → Vidéos/
Organisation terminée.
```

## 🎯 Plateformes supportées

- ✅ **Linux** - Version actuelle
- ⏳ **Windows** - Version en cours de développement

> 🚧 **Bientôt disponible** : Une version PowerShell pour Windows arrivera prochainement !

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :
- Signaler des bugs
- Proposer de nouvelles fonctionnalités
- Améliorer la documentation
- Ajouter de nouveaux types de fichiers

## 📝 Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.

## 🛠️ Support

Si vous rencontrez des problèmes ou avez des questions :
- Ouvrez une issue sur GitHub
- Consultez les logs dans `~/organiser_telechargements.log`
- Vérifiez que le dossier `~/Téléchargements` existe

---

**Made with ❤️ by [RolandTech](https://github.com/Amedon-Roland)**

> ⭐ Si ce projet vous aide, n'hésitez pas à lui donner une étoile sur GitHub !