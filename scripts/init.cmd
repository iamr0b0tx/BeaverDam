@echo off
cls

copy scripts\db.sqlite3 .
virtualenv venv
cd venv\Scripts\ & activate & cd ..\..

