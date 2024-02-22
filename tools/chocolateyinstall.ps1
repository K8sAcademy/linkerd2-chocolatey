
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.14.10/linkerd2-cli-stable-2.14.10-windows.exe'
$checksum64    = '0454899fb2f5e5b735bf78e791da21ef704f9ac97122111f0c7d8fe2616b4d97'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url64bit $url -checksum64 $checksum64 -checksumType64 $checksumType64
