
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.14.8/linkerd2-cli-stable-2.14.8-windows.exe'
$checksum64    = '611bd5117f8f31b5d3ff9911339ab1b2eb9dec9ed0cdc6de0f103e0313eaa6d2'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url64bit $url -checksum64 $checksum64 -checksumType64 $checksumType64
