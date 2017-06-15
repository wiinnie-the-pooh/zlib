<# This script builds libiconv #>
Param(
	[string]$arch,
	[int]$vsver
)

Import-Module Pscx

Import-VisualStudioVars -VisualStudioVersion $vsver -Architecture $arch

Push-Location $PSScriptRoot\..

Start-Process -NoNewWindow -Wait nmake "-f .\win32\Makefile.msc test testdll"

Pop-Location

Pop-EnvironmentBlock
