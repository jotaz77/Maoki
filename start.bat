@echo off
echo ===============================
echo 🔹 INICIANDO MAOKI BACKEND 🔹
echo ===============================

REM Ativar ambiente virtual
if exist venv (
    echo 🔹 Ativando ambiente virtual...
    call venv\Scripts\activate
) else (
    echo ⚠️  Ambiente virtual nao encontrado! Crie com: python -m venv venv
    pause
    exit /b
)

REM Rodar servidor FastAPI
echo 🔹 Iniciando servidor FastAPI (Maoki)...
uvicorn app.main:app --reload

pause
