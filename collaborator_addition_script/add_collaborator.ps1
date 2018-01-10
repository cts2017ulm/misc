// Ger repositories
$repositories = Invoke-WebRequest https://api.github.com/user/repos -Headers @{"Authorization"="token f79d3dbfa3f26e209f44ab8bd6bdef9e66d55e18"} -UseBasicParsing | ConvertFro
m-Json | %{$_.name}

Invoke-WebRequest -Method PUT https://api.github.com/repos/cts2017ulm/icts1/collaborators/ara-oforiwa -Headers @{"Authorization"="token f79d3dbfa3f26e209f44ab8bd6
bdef9e66d55e18"} -UseBasicParsing
