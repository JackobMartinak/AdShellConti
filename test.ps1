$source = Read-Host -Prompt 'Meno uzivatela, ktoreho prava chcete skopirovat:'
$getusergroups = Get-ADUser –Identity $source -Properties memberof | Select-Object -ExpandProperty memberof
echo $getusergroups
