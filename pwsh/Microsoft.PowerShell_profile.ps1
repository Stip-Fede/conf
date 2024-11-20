if ($IsMacOS) {
  $(/opt/homebrew/bin/brew shellenv) | Invoke-Expression
  Set-PSReadLineOption -EditMode Windows
  Set-PSReadLineKeyHandler -Chord Ctrl+End -Function ForwardDeleteLine
  Set-Location /Users/Shared/projects
} 
if ($IsWindows) {
  Set-Location C:\projects\
}
$Host.UI.RawUI.WindowTitle="pwsh - $($PID)"
Import-Module -Name Terminal-Icons 
oh-my-posh init pwsh --config ~/.fs2.omp.json | Invoke-Expression
Write-Host "OMP theme set to ~/.fs2. DP $DebugPreference EAP $ErrorActionPreference"
