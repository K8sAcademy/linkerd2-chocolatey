
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.11.2/linkerd2-cli-stable-2.11.2-windows.exe'
$checksum64    = '3092f1ff90b453e9fc8ea7c71aaeed4ac0dbf32035bd00664d79ffcd84a19435'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
