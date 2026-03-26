@echo off
tasm /zi main.asm
if errorlevel 1 goto exit
tlink /v main.obj
if errorlevel 1 goto exit
main.exe

:exit