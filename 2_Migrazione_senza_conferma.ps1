# --- IMPOSTA LA VARIABILE QUI ---
$Mail = "mattia.caneva@ciao.com"

# Crea la richiesta (va diretta al completamento)
New-MoveRequest -Identity $Mail -Remote -RemoteHostName "posta.valoriscarl.it" -RemoteCredential (Get-Credential) -TargetDeliveryDomain "ValoriScarl.onmicrosoft.com"

# Monitoraggio specifico
Get-MoveRequestStatistics -Identity $Mail | select DisplayName, StatusDetail, PercentComplete, BytesTransferred