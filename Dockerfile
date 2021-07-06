FROM mcr.microsoft.com/dotnet/sdk:5.0

COPY . . 
ENV PATH="${PATH}:/root/.dotnet/tools"
RUN ["chmod", "+x", "/entrypoint.sh"]

RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

ENTRYPOINT ["/entrypoint.sh"]