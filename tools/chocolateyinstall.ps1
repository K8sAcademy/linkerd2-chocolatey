
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.11.3/linkerd2-cli-stable-2.11.3-windows.exe'
$checksum64    = '61446ab51b74f7fa47a6c4670ea95542ab0372d4186c2b5ae82ddf2f3f797c38'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
