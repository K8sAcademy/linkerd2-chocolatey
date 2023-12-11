
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.14.6/linkerd2-cli-stable-2.14.6-windows.exe'
$checksum64    = 'c4eb43ecba1185d76fd2c255d302ccc568dcbf62770fe2db4b2581cf2fa69530'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
