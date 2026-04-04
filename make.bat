@echo off
REM Ensure bin directory exists
if not exist bin mkdir bin

REM Assemble and link the program 
tasm /zi main.asm
if errorlevel 1 goto exit

tlink /v main.obj
if errorlevel 1 goto exit

REM Copy output files to bin, /y supresses confirmation prompts
copy /Y main.obj bin\
copy /Y main.exe bin\

REM delete the object and exec in the current dir
del main.obj
del main.exe

REM Run the executable from bin
bin\main.exe

:exit