#PortScan by vidoca
param($alvo)
if(!$alvo){
    echo "----------------------------------------"
    echo "Modo de uso: .\portscan.ps1 example.com"
    echo "Modo de uso: .\portscan.ps1 192.168.0.1"
    echo "----------------------------------------"
} else {
    foreach($portas in 1..1024){
        try{       
            if(Test-NetConnection $alvo -Port $portas -WarningAction SilentlyContinue -InformationLevel Quiet){
                echo "PORTA ABERTA-> $portas"
            } else {}
        } catch {echo "ERRO"}
    }
}