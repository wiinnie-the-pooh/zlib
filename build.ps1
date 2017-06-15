<# This script builds libiconv #>
Param(
	[string]$arch,
	[int]$vsver
)

Import-Module Pscx

Import-VisualStudioVars -VisualStudioVersion $vsver -Architecture $arch

Set-Location $PSScriptRoot

Start-Process -Wait nmake "-f ${PSScriptRoot}\win32\Makefile.msc all"

Pop-EnvironmentBlock # Pushed by Import-VisualStudioVars
