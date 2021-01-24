$pwd = Get-Location

$params = "-v", "$pwd/:/code",
"-w", "/code",
"--expose", "5000",
"-p", "0.0.0.0:5000:5000",
"-it", "jinmin-test-1",
,"python", "main.py"

& docker run @params