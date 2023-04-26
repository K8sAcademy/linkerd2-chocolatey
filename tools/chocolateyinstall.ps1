
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.13.2/linkerd2-cli-stable-2.13.2-windows.exe'
$checksum64    = '05110d45c9e0f562a7c9b149c2ea7b9bb03ea6b88e0a0f2ef48bc8b491ac669f'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
