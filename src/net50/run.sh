#!/usr/bin/env bash
set -euox pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_NOLOGO=1

dotnet run --project NBitcoinConsoleAppNet50 --no-launch-profile -- "$@"
