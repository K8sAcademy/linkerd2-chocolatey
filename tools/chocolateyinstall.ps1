
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url      = 'https://github.com/linkerd/linkerd2/releases/download/stable-2.13.5/linkerd2-cli-stable-2.13.5-windows.exe'
$checksum64    = '4a0d4899ce5158184f5f8fc5ec9b4ef46c76c53bbc1bcd21f93a995e072ca698'
$checksumType64= 'sha256'

Get-ChocolateyWebFile -PackageName "Linkerd2" -FileFullPath "$toolsDir\linkerd.exe" -Url $url -checksum64 $checksum64 -checksumType64 $checksumType64
