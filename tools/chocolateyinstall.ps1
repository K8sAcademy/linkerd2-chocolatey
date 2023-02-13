
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.12.4/linkerd2-cli-stable-2.12.4-windows.exe'
$checksum64    = 'b4101d400e703c82c7857f63e955bf31877e1ceb513f1153ff4fcb6769f85209'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
