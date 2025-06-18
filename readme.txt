winget configure .\configuration.dsc.yaml  --disable-interactivity

winget install --source winget --exact --id Microsoft.VisualStudio.2022.Community --override "--passive --config .\wdk.vsconfig"

nuget restore .\packages.config -PackagesDirectory .\packages\ 

MSBuild.exe .\SampleKmdf.sln /p:configuration=release /p:platform=arm64 /t:rebuild

