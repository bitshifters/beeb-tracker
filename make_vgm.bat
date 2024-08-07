@echo off
setlocal enableextensions enabledelayedexpansion
set VGMCONV=..\vgm-converter\vgmconverter.py
set NUM=1
for %%f in (%1\*.vgm) do (
	python "%VGMCONV%" "%%f" -t bbc -q 50 -r "%1\%1_!NUM!.raw" -o "%1\%1_!NUM!.vgm"
	set /A NUM=!NUM!+1
)
endlocal