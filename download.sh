#!/bin/bash
URLS=("https://datos.comunidad.madrid/catalogo/dataset/b3d55e40-8263-4c0b-827d-2bb23b5e7bab/resource/01a7d2e8-67c1-4000-819d-3356bb514d05/download/covid19_tia_zonas_basicas_salud.json" 
"https://datos.comunidad.madrid/catalogo/dataset/b3d55e40-8263-4c0b-827d-2bb23b5e7bab/resource/b7b9edb4-0c70-47d3-9c64-8c4913830a24/download/covid19_tia_zonas_basicas_salud.csv" 
"https://datos.comunidad.madrid/catalogo/dataset/7da43feb-8d4d-47e0-abd5-3d022d29d09e/resource/b2a3a3f9-1f82-42c2-89c7-cbd3ef801412/download/covid19_tia_muni_y_distritos.csv" 
"https://datos.comunidad.madrid/catalogo/dataset/7da43feb-8d4d-47e0-abd5-3d022d29d09e/resource/ead67556-7e7d-45ee-9ae5-68765e1ebf7a/download/covid19_tia_muni_y_distritos.json")

for url in "${URLS[@]}"; do
  curl -O -k $url;
done

git diff --quiet && git diff --staged --quiet || (git commit -am 'Actualizacion datos')
