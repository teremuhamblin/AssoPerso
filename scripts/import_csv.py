import pandas as pd

def import_csv(csv_path, excel_path, sheet_name):
    df = pd.read_csv(csv_path)
    with pd.ExcelWriter(excel_path, mode="a", if_sheet_exists="replace") as writer:
        df.to_excel(writer, sheet_name=sheet_name, index=False)

if __name__ == "__main__":
    print("Usage: import_csv('fichier.csv', 'base.xlsx', 'Personnel')")
