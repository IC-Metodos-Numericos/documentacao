🧠 Passo 1 — Instalar Haskell corretamente com ghcup
O ghcup é a ferramenta oficial e recomendada para instalar o ecossistema Haskell no Windows, Linux e Mac.

🔗 Acesse o site oficial:
👉 https://www.haskell.org/ghcup/

⚙️ Instalação via PowerShell Para Windows (recomendado):
Execute este comando no PowerShell:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { & ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -Interactive -DisableCurl } catch { Write-Error $_ }

```
⚙️ Instalação via Terminal (Linux/Mac):
Execute este comando no terminal:
```bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

Siga as instruções na tela. Ele irá instalar:

- ghc (o compilador)

- cabal (o gerenciador de pacotes)

- stack (opcional, mas recomendado)

- hls (Haskell Language Server, para integração com VSCode ou outro editor)

🧠 Passo 2 — Verificar se está funcionando
Testa no terminal:

powershell
Copiar
Editar
ghc --version
cabal --version
ghcup --version
Tudo deve responder normalmente.


🔄 Após a instalação, reinicie o terminal ou PowerShell.
🔄 Atualize o ghcup:
```bash
ghcup upgrade
```
