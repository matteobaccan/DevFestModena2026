@echo off
echo Generazione PDF della presentazione con Marp...

call npx @marp-team/marp-cli presentation.md --pdf --allow-local-files

