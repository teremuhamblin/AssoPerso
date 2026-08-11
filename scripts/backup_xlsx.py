import shutil
import datetime

def backup_excel(excel_path, backup_folder):
    date = datetime.datetime.now().strftime("%Y-%m-%d_%H-%M")
    backup_path = f"{backup_folder}/backup_{date}.xlsx"
    shutil.copy(excel_path, backup_path)
    print(f"Sauvegarde créée : {backup_path}")

if __name__ == "__main__":
    print("Usage: backup_excel('base.xlsx', './backups')")
