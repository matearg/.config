# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding 

# Imported Modules
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine
Import-Module -Name posh-git

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias lg lazygit
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
# oh-my-posh --init --shell pwsh --config ~\scoop\apps\oh-my-posh\current\themes\takuya.omp.json | Invoke-Expression

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
