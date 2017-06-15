<# This script builds libiconv #>
Param(
	[string]$arch,
	[int]$vsver
)

Import-Module Pscx

Set-PSDebug -Trace 1

Import-VisualStudioVars -VisualStudioVersion $vsver -Architecture $arch

Start-Process -NoNewWindow -Wait nmake "-f ${PSScriptRoot}\win32\Makefile.msc all test testdll"

Pop-EnvironmentBlock # Pushed by Import-VisualStudioVars
