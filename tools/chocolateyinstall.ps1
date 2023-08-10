
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.13.6/linkerd2-cli-stable-2.13.6-windows.exe'
$checksum64    = 'ff49c30fe0dacb5559a3cc27c0a1631eb77d863bec74a515c0b8607220f06beb'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
