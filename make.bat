@echo off
..\..\Bin\beebasm.exe -i beebtrk.6502 -do beebtrk.ssd -opt 2 -v
pause
..\..\Bin\beebasm.exe -i beebtrk2.6502 -do beebtrk2.ssd -opt 2 -v
pause
..\..\Bin\beebasm.exe -i beebtrk3.6502 -do beebtrk3.ssd -opt 2 -v
