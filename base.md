###### base.md >> markdown 
> 👉 Méthode avec Python + pandas.
- 📘 Création du fichier base.xlsx

### 🛠️ Méthode complète
- Création du fichier Excel **base.xlsx** avec 5 onglets

#### 1. Installer les dépendances
>Assurez-vous d’avoir Python installé, puis installez pandas :
```bash
pip install pandas openpyxl
```

#### 2. Créer un fichier Python : **create_base.py**
Copiez le script suivant :
```python
import pandas as pd
```

--- Définition des colonnes pour chaque onglet ---

```text
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

--- Création des DataFrames vides ---

dfpersonnel = pd.DataFrame(columns=personnelcols)
dfcontrats = pd.DataFrame(columns=contratscols)
dfpresences = pd.DataFrame(columns=presencescols)
dfcompetences = pd.DataFrame(columns=competencescols)
dfmateriel = pd.DataFrame(columns=materielcols)

--- Écriture dans base.xlsx ---

with pd.ExcelWriter("base.xlsx", engine="openpyxl") as writer:
    dfpersonnel.toexcel(writer, sheet_name="Personnel", index=False)
    dfcontrats.toexcel(writer, sheet_name="Contrats", index=False)
    dfpresences.toexcel(writer, sheet_name="Presences", index=False)
    dfcompetences.toexcel(writer, sheet_name="Competences", index=False)
    dfmateriel.toexcel(writer, sheet_name="Materiel", index=False)

print("Fichier base.xlsx créé avec succès.")
```

#### 3. Exécuter le script
Dans le terminal :
```bash
python create_base.py
```

#### 4. Résultat
- Un fichier Excel nommé base.xlsx sera créé dans le dossier courant, contenant :
   - Onglet Personnel
   - Onglet Contrats
   - Onglet Presences
   - Onglet Competences
   - Onglet Materiel

>Chaque onglet contient uniquement les colonnes définies, prêt à être rempli.

---
