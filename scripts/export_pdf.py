from fpdf import FPDF
import pandas as pd

def export_pdf(excel_path, sheet_name, output_pdf):
    df = pd.read_excel(excel_path, sheet_name=sheet_name)

    pdf = FPDF()
    pdf.add_page()
    pdf.set_font("Arial", size=12)

    for index, row in df.iterrows():
        for col, val in row.items():
            pdf.cell(0, 10, f"{col}: {val}", ln=True)
        pdf.ln(5)

    pdf.output(output_pdf)

if __name__ == "__main__":
    print("Usage: export_pdf('base.xlsx', 'Personnel', 'fiche.pdf')")
