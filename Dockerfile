FROM mcr.microsoft.com/dotnet/sdk:5.0

RUN setx PATH "%PATH%;C:\Users\ContainerUser\.dotnet\tools"

RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

ENTRYPOINT ["jb", "cleanupcode", "--help"]
