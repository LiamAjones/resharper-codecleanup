FROM mcr.microsoft.com/dotnet/sdk:5.0

COPY . . 

RUN ["chmod", "+x", "/entrypoint.sh"]

RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

ENTRYPOINT ["/entrypoint.sh"]