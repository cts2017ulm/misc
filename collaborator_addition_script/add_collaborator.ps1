// Ger repositories
$repositories = Invoke-WebRequest https://api.github.com/user/repos -Headers @{"Authorization"="token TOKEN"} -UseBasicParsing | ConvertFro
m-Json

foreach($repo in $repositories){
	Invoke-WebRequest -Method PUT https://api.github.com/repos/cts2017ulm/icts1/collaborators/USERNAME -Headers @{"Authorization"="token TOKEN"} -UseBasicParsing
}


