# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding 

# Imported Modules
Import-Module Terminal-Icons
Import-Module PSReadLine

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias vim nvim

# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionViewStyle List

# Prompt
Clear-Host

# Starship
Invoke-Expression (&starship init powershell)

# Oh my Posh
# oh-my-posh --init --shell pwsh --config ~\.config\powershell\mytheme.omp.json | Invoke-Expression
# oh-my-posh --init --shell pwsh --config ~\scoop\apps\oh-my-posh\current\themes\M365Princess.omp.json | Invoke-Expression

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
