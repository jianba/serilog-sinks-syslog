#!/bin/bash
set -ev

dotnet restore ./serilog-sinks-syslog.sln --runtime netstandard2.0
dotnet build ./src/Serilog.Sinks.Syslog/Serilog.Sinks.Syslog.csproj --runtime netstandard2.0 --configuration Release

dotnet test ./test/Serilog.Sinks.Syslog.Tests/Serilog.Sinks.Syslog.Tests.csproj --framework netcoreapp2.0

cd ${TRAVIS_BUILD_DIR}
