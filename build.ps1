<# This script builds libiconv #>
Param(
	[string]$arch,
	[int]$vsver
)

Import-Module Pscx

Set-Location $PSScriptRoot

Import-VisualStudioVars -VisualStudioVersion $vsver -Architecture $arch

Start-Process -NoNewWindow -Wait nmake "-f win32/Makefile.msc all test testdll"

# Pushed by Import-VisualStudioVars
Pop-EnvironmentBlock
