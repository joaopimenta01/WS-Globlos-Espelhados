$ErrorActionPreference = "Stop"
Set-Location -LiteralPath "C:\Codex\WS Globos Espelhados"

if (-not (Test-Path -LiteralPath ".git")) {
  git init
}

git branch -M main

$remote = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) {
  git remote add origin "https://github.com/joaopimenta01/WS-Globlos-Espelhados.git"
} elseif ($remote -ne "https://github.com/joaopimenta01/WS-Globlos-Espelhados.git") {
  git remote set-url origin "https://github.com/joaopimenta01/WS-Globlos-Espelhados.git"
}

git add .
git commit -m "Add WS Globos Espelhados landing page"
git push -u origin main
