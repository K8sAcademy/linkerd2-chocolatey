
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.8.0/linkerd2-cli-stable-2.8.0-windows.exe'
$checksum64    = '4d91f42514143aabaf8497c73c9ab496e30d80e378f24427a6176c535b0b510d'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
