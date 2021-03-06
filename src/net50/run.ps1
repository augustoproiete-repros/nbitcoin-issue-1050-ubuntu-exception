$ErrorActionPreference = 'Stop'

Set-Location -LiteralPath $PSScriptRoot

$env:DOTNET_SKIP_FIRST_TIME_EXPERIENCE = '1'
$env:DOTNET_CLI_TELEMETRY_OPTOUT = '1'
$env:DOTNET_NOLOGO = '1'

dotnet run --project NBitcoinConsoleAppNet50 --no-launch-profile -- @args
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
