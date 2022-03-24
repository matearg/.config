# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding 

# Imported Modules
Import-Module Terminal-Icons
# Import-Module posh-git
# Import-Module PSReadLine

# Alias
Set-Alias ll ls
Set-Alias c clear
Set-Alias wh where.exe
Set-Alias g git
Set-Alias n nvim
Set-Alias v nvim
Set-Alias vim nvim

# PSReadLine
# Set-PSReadLineOption -PredictionSource HistoryAndPlugin
# Set-PSReadLineOption -EditMode Windows
# Set-PSReadLineOption -PredictionViewStyle InLineView

# Prompt
Clear-Host
# neofetch
Invoke-Expression (&starship init powershell)
# oh-my-posh --init --shell pwsh --config ~\.config\powershell\mytheme.omp.json | Invoke-Expression
# oh-my-posh --init --shell pwsh --config ~\scoop\apps\oh-my-posh\current\themes\half-life.omp.json | Invoke-Expression
