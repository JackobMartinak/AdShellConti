# SCRIPT
$source = Read-Host -Prompt 'Meno uzivatela, ktoreho prava chcete skopirovat:'
$target = Read-Host -Prompt 'Meno uzivatela, ktoremu chcete prava dat:'
$getusergroups = Get-ADUser –Identity $source -Properties memberof | Select-Object -ExpandProperty memberof
$getusergroups | Add-ADGroupMember -Members $target -verbose
Get-ADUser -Identity $target -Properties memberof | Select-Object -ExpandProperty memberof
