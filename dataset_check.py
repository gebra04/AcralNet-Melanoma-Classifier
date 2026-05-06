import pandas as pd
import os

pastas = [
    ('./imagens_acrais_ISIC/metadata.csv', 'Malignas'),
    ('./imagens_acrais_benignas/metadata.csv', 'Benignas')
]

print("=== ESTATÍSTICAS DO SEU NOVO DATASET ACRAL ===")
total_geral = 0

for caminho, nome in pastas:
    if os.path.exists(caminho):
        df = pd.read_csv(caminho)
        total = len(df)
        total_geral += total
        print(f"Pasta {nome}: {total} imagens")
    else:
        print(f"Aviso: {caminho} não encontrado.")

print("-" * 40)
print(f"Total Geral: {total_geral} imagens prontas para treino.")