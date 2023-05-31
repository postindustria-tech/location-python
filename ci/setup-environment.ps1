param (
    [Parameter(Mandatory=$true)]
    [string]$LanguageVersion
)

Write-Output "GITHUB_JOB: $env:GITHUB_JOB"
if ($env:GITHUB_JOB -eq "PreBuild") {
    Write-Output "Skipping environment setup"
    exit 0
}

$dependencies = "pylint", "unittest-xml-reporting", "coverage", "certifi", "requests", "cachetools", "chevron", "jsmin", `
                "fiftyone_pipeline_cloudrequestengine", `
                "fiftyone_pipeline_core", `
                "fiftyone_pipeline_engines"

./python/setup-environment.ps1 -LanguageVersion $LanguageVersion -Dependencies $dependencies

exit $LASTEXITCODE
