
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.14.0/linkerd2-cli-stable-2.14.0-windows.exe'
$checksum64    = '14abf3808e0ad193cfa2a0d7dcd34a8274dfe26dea3065caf8c65571af1e9c2f'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
