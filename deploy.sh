ApiKey=$1
Source=$2

nuget pack ./test-repo.nuspec -Verbosity detailed -Version 1.0.0
nuget push ./test-repo.*.nupkg -Verbosity detailed -ApiKey=$1 -Source=$2