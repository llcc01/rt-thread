@echo on

for /r %%f in (*.bin) do del %%f
for /r %%f in (*.elf) do del %%f
for /r %%f in (*.pyc) do del %%f

for /r %%f in (ae350_soc\ae350\*.i) do del %%f
ren ae350_soc\ae350\start.S start.S.bak
for /r %%f in (ae350_soc\ae350\*.s) do del %%f
ren ae350_soc\ae350\start.S.bak start.S

for /r %%f in (ae350_soc\driver\ae350\*.i) do del %%f
for /r %%f in (ae350_soc\driver\ae350\*.s) do del %%f

for /r %%f in (ae350_soc\lib\*.i) do del %%f
for /r %%f in (ae350_soc\lib\*.s) do del %%f

for /r %%f in (build\applications\*.i) do del %%f
for /r %%f in (build\applications\*.s) do del %%f

for /r %%f in (build\drivers\*.i) do del %%f
for /r %%f in (build\drivers\*.s) do del %%f

for /r %%f in (build\kernel\components\drivers\serial\*.i) do del %%f
for /r %%f in (build\kernel\components\drivers\serial\*.s) do del %%f

for /r %%f in (build\kernel\components\drivers\src\*.i) do del %%f
for /r %%f in (build\kernel\components\drivers\src\*.s) do del %%f

for /r %%f in (build\kernel\components\libc\compilers\common\*.i) do del %%f
for /r %%f in (build\kernel\components\libc\compilers\common\*.s) do del %%f

for /r %%f in (build\kernel\libcpu\risc-v\a25\*.i) do del %%f
for /r %%f in (build\kernel\libcpu\risc-v\a25\*.s) do del %%f

for /r %%f in (build\kernel\src\*.i) do del %%f
for /r %%f in (build\kernel\src\*.s) do del %%f