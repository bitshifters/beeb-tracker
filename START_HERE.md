# beeb-tracker: start here

Beeb Tracker, a Bitshifters music disk series for the BBC Micro (6502, beebasm): plays compressed raw VGM files with a tracker-style MODE 7 display. Volumes 1-3 date from 2016; volume 5 (Wonder Boy III tunes) was added in 2024.

| | |
|---|---|
| GitHub | https://github.com/bitshifters/beeb-tracker (public) |
| Local path | D:\beeb\mine\beeb-tracker (moved from OneDrive\BEEB\Repos\beeb-tracker in the 2026-11 tidy) |
| Branch | wip/wonderboy-3 (checked out, pushed); others: master (2016, "Added vgmtest build target"), bugfix-turbommc-nmi, feature-beat-on-volume |
| Last commit | 2024-08-07: Beeb Tracker volume 5. |

## What's in here
- `beebtrk.6502`, `beebtrk2.6502`, `beebtrk3.6502`, `beebtrk5.6502`: one source per volume; `beebtrk.ssd`, `beebtrk2.ssd`, `beebtrk3.ssd`: built discs (tracked).
- `lib\`: the tracker display (`beebtracker.s.6502`), VGM player, Exomiser. `data\`: MODE 7 fonts, menu overlay, volume loaders.
- `vgm_botb`, `vgm_ng`, `vgm_sonic`, `vgm_wonder`, `vgm_sources`: tunes per volume (VGM and converted .raw). `volume1\`: volume 1 files.
- `make_vgm.bat FOLDER`: converts a folder's VGMs with `..\vgm-converter\vgmconverter.py` (Simon M's vgm-converter, expected beside this repo).
- `notes.txt`: the original to-do/design notes; `beebtrk.md`, `beebtrk2.md`: disc notes.

## Build and run
- `make`: runs `make.bat` (Makefile added 2026-11-22): beebasm (`..\..\Bin\beebasm.exe`) builds `beebtrk5.ssd`, appending its listing to `compile.txt`. Works. The other volumes' lines are commented out in `make.bat`.
- `make help` lists targets. `run.bat` launches `..\..\Tools\B-emV2.2Win\B-em.exe beebtrk.ssd` (volume 1, not 5).
- Output: `beebtrk5.ssd` is new and untracked (not gitignored), unlike the tracked volume 1-3 discs.

## Local changes
- Working tree clean before the build; now untracked: `Makefile`, `START_HERE.md`, `beebtrk5.ssd` (build output).
- `wip/wonderboy-3` is one commit (volume 5) on top of `bugfix-turbommc-nmi` (48 files, mostly `vgm_wonder\`); it is not merged to master.

## Status and next steps
- Volume 5 was built in 2024 on a wip branch. Decide whether to merge `wip/wonderboy-3` (and `bugfix-turbommc-nmi`) into master, and whether to commit `beebtrk5.ssd` like the other discs.
- No volume 4 source here.

## See also
- README.md, notes.txt. https://github.com/simondotm/vgm-converter.
