###### README.md >> markdown 
# 📘 Structure complète
>Pour l’application **Excel**

### 🧍‍♂️ Personnel
- Contient toutes les informations administratives du personnel
   - ID  
   - Nom  
   - Prénom  
   - Date de naissance  
   - Adresse  
   - Téléphone  
   - Email  
   - Poste  
   - Date d’entrée  
   - Statut  
   - Notes  

### 📄 Contrats
- Pour suivre les contrats de chaque membre
   - ID Personnel  
   - Type de contrat  
   - Date début  
   - Date fin  
   - Temps de travail  
   - Salaire  
   - Observations  

### 🕒 Présences
- Pour gérer les présences et absences
   - ID Personnel  
   - Date  
   - Présent (Oui/Non)  
   - Motif absence  

### 🎓 Compétences
- Pour suivre les compétences et certifications
   - ID Personnel  
   - Compétence  
   - Niveau  
   - Certification  
   - Date obtention  

### 🎒 Matériel attribué
- Pour gérer le matériel prêté
   - ID Personnel  
   - Matériel  
   - Numéro de série  
   - Date attribution  
   - Date restitution  

---

📁 Dossiers nécessaires
```text
AssociationPersonnel/
│
├── base.xlsx
│
├── docs/
│   ├── README.md
│   ├── Guide_utilisation.md
│   └── Modèles/
│       ├── Fiche_personnel.pdf
│       ├── Fiche_contrat.pdf
│       └── Fiche_competence.pdf
│
├── scripts/
│   ├── import_csv.py
│   ├── export_pdf.py
│   └── backup_xlsx.py
│
└── config/
    └── settings.json
```
