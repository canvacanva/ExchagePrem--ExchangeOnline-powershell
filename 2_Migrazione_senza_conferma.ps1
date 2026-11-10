# --- IMPOSTA LA VARIABILE QUI ---
$Mail = "mattia.caneva@ciao.com"

# Crea la richiesta (va diretta al completamento)
New-MoveRequest -Identity $Mail -Remote -RemoteHostName "posta.teeeest.mail" -RemoteCredential (Get-Credential) -TargetDeliveryDomain "teeeest.onmicrosoft.com"

# Monitoraggio specifico
Get-MoveRequestStatistics -Identity $Mail | select DisplayName, StatusDetail, PercentComplete, BytesTransferred
