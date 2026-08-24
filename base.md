###### 📘 base.md >> markdown
> Méthode Python + pandas
- (Version technique améliorée)

> Génération automatisée du fichier base.xlsx contenant les 5 modules administratifs : Personnel, Contrats, Présences, Compétences, Matériel.

---

⚙️ 1. Dépendances nécessaires
Assurez-vous que Python est installé, puis installez les modules requis :

```bash
pip install pandas openpyxl
```

---

🛠️ 2. Script Python : create_base.py
Ce script génère automatiquement un fichier Excel structuré, conforme aux besoins administratifs.

```python
import pandas as pd
```

```text
================================

Définition des colonnes

================================

personnel_cols = [
    "ID", "Nom", "Prénom", "Date de naissance", "Adresse",
    "Téléphone", "Email", "Poste", "Date d’entrée", "Statut", "Notes"
]

contrats_cols = [
    "Personnel ID", "Type de contrat", "Date de début",
    "Date de fin", "Temps de travail", "Salaire", "Observations"
]

presences_cols = [
    "Personnel ID", "Date", "Présent", "Motif d'absence"
]

competences_cols = [
    "Personnel ID", "Compétence", "Niveau",
    "Certification", "Date d'obtention"
]

materiel_cols = [
    "Personnel ID", "Matériel", "Numéro de série",
    "Date d'attribution", "Date de restitution"
]

================================

Création des DataFrames vides

================================

dfpersonnel = pd.DataFrame(columns=personnelcols)
dfcontrats = pd.DataFrame(columns=contratscols)
dfpresences = pd.DataFrame(columns=presencescols)
dfcompetences = pd.DataFrame(columns=competencescols)
dfmateriel = pd.DataFrame(columns=materielcols)

================================

Écriture dans base.xlsx

================================

with pd.ExcelWriter("base.xlsx", engine="openpyxl") as writer:
    dfpersonnel.toexcel(writer, sheet_name="Personnel", index=False)
    dfcontrats.toexcel(writer, sheet_name="Contrats", index=False)
    dfpresences.toexcel(writer, sheet_name="Presences", index=False)
    dfcompetences.toexcel(writer, sheet_name="Competences", index=False)
    dfmateriel.toexcel(writer, sheet_name="Materiel", index=False)

print("Fichier base.xlsx créé avec succès.")
```

---

▶️ 3. Exécution
Dans votre terminal :

```python
python create_base.py
```

---

📦 4. Résultat obtenu
Le script génère automatiquement :

```text
📁 base.xlsx  
Avec les onglets suivants :
- Personnel — Informations administratives  
- Contrats — Suivi contractuel  
- Présences — Présences / absences  
- Compétences — Compétences & certifications  
- Matériel — Matériel attribué
```

> Chaque onglet contient uniquement les colonnes définies, prêt à être rempli ou importé via vos scripts (importcsv.py, backupxlsx.py, etc.).

---

🧩 Bonus technique ajouté
Pour un dépôt GitHub propre, ajoutez dans votre README principal :

```text
scripts/
│── create_base.py        # Génération du fichier Excel
│── import_csv.py         # Import automatisé depuis CSV
│── export_pdf.py         # Export des fiches en PDF
│── backup_xlsx.py        # Sauvegarde automatique
```

---
