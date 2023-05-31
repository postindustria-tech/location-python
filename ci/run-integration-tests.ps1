param (
    [Parameter(Mandatory=$true)]
    [string]$RepoName,
    [Parameter(Mandatory=$true)]
    [Hashtable]$Keys
)

./python/run-integration-tests.ps1 -RepoName $RepoName -Packages . -Keys $Keys

exit $LASTEXITCODE
