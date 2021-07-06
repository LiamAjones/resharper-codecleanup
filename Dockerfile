FROM mcr.microsoft.com/dotnet/sdk:5.0

RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

RUN export PATH="$PATH:/root/.dotnet/tools"

ENTRYPOINT ["jb", "cleanupcode", "--help"]
