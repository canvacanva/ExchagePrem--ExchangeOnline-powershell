# --- IMPOSTA LA VARIABILE QUI ---
$Mail = "mattia.caneva@ciao.com"

# Crea la richiesta (si fermerà al 95%)
New-MoveRequest -Identity $Mail -Remote -RemoteHostName "posta.teeeest.mail" -RemoteCredential (Get-Credential) -TargetDeliveryDomain "teeeest.onmicrosoft.com" -SuspendWhenReadyToComplete

# Monitoraggio specifico per questa mailbox
Get-MoveRequestStatistics -Identity $Mail | select DisplayName, StatusDetail, PercentComplete, BytesTransferred

#da usare solo quando la richiesta è arriva al 95% in stato Synced o AutoSuspended
#Resume-MoveRequest -Identity $Mail
