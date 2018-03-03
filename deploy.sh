ApiKey=$1
Source=$2
Version=$3

# dotnet pack ./test-repo.csproj -c Release --no-build --no-restore -o . /p:NuspecFile=test-repo.nuspec /p:PackageVersion=$Version -v d
# dotnet nuget push ./gdyrra.test.repo-todelete.$Version.nupkg -k $ApiKey -s $Source
nuget pack test-repo.nuspec -Prop Configuration=Release -Version $Version -Verbosity detailed -OutputDirectory .
nuget push gdyrra.test.repo-todelete.$Version.nupkg -ApiKey $ApiKey -Source $Source