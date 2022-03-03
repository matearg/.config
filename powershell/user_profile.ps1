# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding 

# Imported Modules
Import-Module Terminal-Icons
Import-Module posh-git
Import-Module PSReadLine

# Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias c clear
Set-Alias n nvim
Set-Alias vim nvim

# PSReadLine
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionViewStyle ListView

# Prompt
Clear-Host
# neofetch.ps1
# Invoke-Expression (&starship init powershell)
# oh-my-posh --init --shell pwsh --config ~\.config\powershell\truepowerline.omp.json | Invoke-Expression
oh-my-posh --init --shell pwsh --config ~\AppData\Local\Programs\oh-my-posh\themes\atomicBit.omp.json | Invoke-Expression
