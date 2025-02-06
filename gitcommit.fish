#!/usr/bin/env fish

# Přidá všechny změněné soubory do git
git add .

# Získá aktuální datum a čas ve formátu den-měsíc-rok hodiny:minuty:sekundy
set CURRENT_DATETIME (date "+%d-%m-%Y %H:%M:%S")

# Provede commit s datem a časem jako zprávou
git commit -m "Commit z $CURRENT_DATETIME"

# Odešle změny na vzdálený server
git push
