#!/bin/bash
clear
echo "=========================================="
echo "    INICIANDO CALCULADORA SALARIAL"
echo "=========================================="

# Apenas salva as alterações localmente sem arriscar bloqueios do GitHub
if [[ -n $(git status -s) ]]; then
    git add .
    git commit -m "Atualização local: $(date '+%d/%m/%Y %H:%M:%S')" &> /dev/null
    echo "> Alterações salvas localmente com sucesso!"
else
    echo "> Tudo atualizado localmente."
fi

echo "=========================================="
echo "Acesse no navegador do seu celular:"
echo "👉 http://localhost:8080"
echo "=========================================="
echo "Pressione CTRL+C para encerrar o servidor."
echo ""

python3 -m http.server 8080
