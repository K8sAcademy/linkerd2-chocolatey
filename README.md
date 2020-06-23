# linkerd2-chocolatey
Linkerd2 CLI Chocolatey package configuration
https://github.com/linkerd/linkerd2


Here are the step to build the package

#### edit the linkerd.nuspec file
Change the version number

#### edit the chocolateyinstall.ps1 file
Get the download link and the sha256 from the Linkerd Github repo and replace them in the file.  Make sure to get the info for the Windows 64bit version.

#### create the package
choco pack

#### test locally
choco install linkerd2 -dv -s .

#### login
choco apikey --key [yourKey] --source https://push.chocolatey.org/

#### push the package
choco push [package].nupkg --source https://push.chocolatey.org/