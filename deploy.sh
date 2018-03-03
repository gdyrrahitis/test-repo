ApiKey=$1
Source=$2

dotnet pack ./test-repo.nuspec --no-build /p:PackageVersion=1.0.0 -v d
dotnet nuget push ./test-repo.*.nupkg -k $ApiKey -s $Source