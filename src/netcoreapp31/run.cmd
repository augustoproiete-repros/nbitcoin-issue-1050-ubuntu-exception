@echo on
@cd %~dp0

set DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
set DOTNET_CLI_TELEMETRY_OPTOUT=1
set DOTNET_NOLOGO=1

dotnet run --project NBitcoinConsoleAppNetCoreApp31 --no-launch-profile -- %*