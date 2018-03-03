ApiKey=$1
Source=$2

dotnet pack ./test-repo.csproj -c Release --no-build --no-restore -o . /p:NuspecFile=test-repo.nuspec /p:PackageVersion=1.0.0 -v d
dotnet nuget push ./gdyrra.test.repo-todelete.1.0.0.nupkg -k $ApiKey -s $Source