dotnet tool install dotnet-reportgenerator-globaltool --tool-path tools

$env:CollectCoverage='true'
$env:Include='[*]*'
$env:Exclude='[*]*Test*'
$env:CoverletOutputFormat='opencover,cobertura'
$env:CoverletOutput='_temp/'

dotnet test
./tools/reportgenerator "-reports:**/coverage.opencover.xml" "-targetdir:_temp/Report"
