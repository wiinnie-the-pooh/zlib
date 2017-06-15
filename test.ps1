<# This script builds libiconv #>
Param(
	[string]$arch,
	[int]$vsver
)

Import-Module Pscx

Import-VisualStudioVars -VisualStudioVersion $vsver -Architecture $arch

Set-Location $PSScriptRoot

Start-Process -NoNewWindow -Wait nmake "-f ${PSScriptRoot}\win32\Makefile.msc test testdll"

Pop-EnvironmentBlock # Pushed by Import-VisualStudioVars
