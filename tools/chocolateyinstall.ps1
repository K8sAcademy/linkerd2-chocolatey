
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.8.1/linkerd2-cli-stable-2.8.1-windows.exe'
$checksum64    = '44a282f53fe20c1fe218bf39f48db8d0d6142dc955bdab3939a6d3a6cb709cb2'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
