FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine AS restore
WORKDIR /app
EXPOSE 80

## Copy everything else
ADD src src

RUN ["dotnet", "restore", "src/DevOpsChallenge.SalesApi/DevOpsChallenge.SalesApi.csproj", "-s", "https://api.nuget.org/v3/index.json"]

FROM restore AS build
RUN ["dotnet", "build", "src/DevOpsChallenge.SalesApi/DevOpsChallenge.SalesApi.csproj", "--configuration", "Release"]

FROM build AS publish
RUN ["dotnet", "publish", "src/DevOpsChallenge.SalesApi/DevOpsChallenge.SalesApi.csproj", "--no-build", "--configuration", "Release", "--output", "artifacts"]

FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine AS runtime
WORKDIR /app
COPY --from=publish /app/artifacts /app
ENTRYPOINT ["dotnet", "DevOpsChallenge.SalesApi.dll", "-o", "0.0.0.0"]