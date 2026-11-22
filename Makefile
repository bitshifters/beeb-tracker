# Wrapper so that `make` works from PowerShell / Windows Terminal.
# GNU make runs recipes with cmd.exe here (no sh on PATH).
.PHONY: all build help
all: build

build:
	cmd /c .\make.bat

help:
	@echo make        - build beebtrk5.ssd (Beeb Tracker volume 5) with beebasm (runs make.bat; appends to compile.txt)
	@echo make help   - this list
	@echo Volumes 1-3 are commented out in make.bat; run.bat launches B-em
