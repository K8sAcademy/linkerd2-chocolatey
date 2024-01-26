
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.14.9/linkerd2-cli-stable-2.14.9-windows.exe'
$checksum64    = 'c9adfb2a90b9335e9df964e605d53a31f7611af39af0b97dd941962e1053dfce'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url64bit $url -checksum64 $checksum64 -checksumType64 $checksumType64
