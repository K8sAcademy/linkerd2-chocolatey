
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.9.3/linkerd2-cli-stable-2.9.3-windows.exe'
$checksum64    = 'e19cbb0cbf7f3631273fa1dd265847370b713415d6c90b4d5725e0ae0dde8fec'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
