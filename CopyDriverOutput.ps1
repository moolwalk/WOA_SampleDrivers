param(
    $DriverFolder=".",
    $Filter="*",
    [switch]$Recurse=$false
)
$DriverOutputFilter="$DriverFolder\$Filter"

# Remove result folders.
Remove-Item -Force -Recurse $env:ACTIONS_RUNNER_RESULT\DriverOutput -ea ignore ; New-Item -Force -ItemType Directory $env:ACTIONS_RUNNER_RESULT\DriverOutput

if(Test-Path $DriverOutputFilter) {
  Write-Host "Copy-Item -Force -Recurse:$Recurse $DriverOutputFilter $env:ACTIONS_RUNNER_RESULT\DriverOutput\."
  Copy-Item -Force -Recurse:$Recurse $DriverOutputFilter $env:ACTIONS_RUNNER_RESULT\DriverOutput\.
} else {
  Write-Host -foreground red "Can't find the output from $DriverOutputFilter."
}