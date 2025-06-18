param(
    $DriverFolder=".",
    $Filter="*"
)
# Remove log folder.
Remove-Item -Force -Recurse $env:ACTIONS_RUNNER_RESULT\LogOutput -ea ignore ; New-Item -Force -ItemType Directory $env:ACTIONS_RUNNER_RESULT\LogOutput

Write-Host "Copy-Item -Force $DriverFolder\$Filter $env:ACTIONS_RUNNER_RESULT\LogOutput\."
Copy-Item -Force $DriverFolder\$Filter $env:ACTIONS_RUNNER_RESULT\LogOutput\.
