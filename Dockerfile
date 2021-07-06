FROM mcr.microsoft.com/dotnet/sdk:5.0

COPY . . 
ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

ENTRYPOINT ["sh", "-c", "jb cleanupcode $solutionPath $args && exit 0"]
