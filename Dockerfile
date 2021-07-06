FROM mcr.microsoft.com/dotnet/sdk:5.0

ENV PATH="/opt/gtk/bin:${PATH}"

RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

ENTRYPOINT ["jb", "cleanupcode", "--help"]
