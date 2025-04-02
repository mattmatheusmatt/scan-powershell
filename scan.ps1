$ip = 192.168.56.101
$portas = $(80,22)

foreach($porta in $portas){
    $teste = Test-NetConnection 192.168.56.101 -Port $porta 2>$null

    if ($teste.TcpTestSucceeded){
        Write-Host "Porta:" $porta "Aberta"
    }

    
}