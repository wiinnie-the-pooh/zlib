<# This script builds libiconv #>
Param(
	[string]$arch,
	[int]$vsver
)

Import-Module Pscx

Import-VisualStudioVars -VisualStudioVersion $vsver -Architecture $arch

Set-Location $PSScriptRoot

Set-PSDebug -Trace 1

Start-Process -NoNewWindow -Wait nmake "-f ${PSScriptRoot}\win32\Makefile.msc test testdll"

Set-PSDebug -Off

Pop-EnvironmentBlock # Pushed by Import-VisualStudioVars
