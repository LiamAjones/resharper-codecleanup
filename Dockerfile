FROM mcr.microsoft.com/dotnet/sdk:5.0

RUN export PATH="$PATH:/root/.dotnet/tools"

RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

ENTRYPOINT ["jb", "cleanupcode", "--help"]
