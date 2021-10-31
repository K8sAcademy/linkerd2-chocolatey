
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.11.1/linkerd2-cli-stable-2.11.1-windows.exe'
$checksum64    = 'c21a37cde3ecc62c7a06ac87d8bb8fe3f50fa0e6c90746d1b8ee8f10572c93c8'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
