FROM mcr.microsoft.com/dotnet/sdk:5.0

COPY . . 
ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet tool install -g JetBrains.ReSharper.GlobalTools

ENTRYPOINT ["sh", "-c", "echo $soltuinPath && jb cleanupcode $solutionPath --settings=\"resharper.Dotsettings\" -p=\"CSharpOnly\""]