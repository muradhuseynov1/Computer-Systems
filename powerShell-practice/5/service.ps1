$serviceName = "wuauserv"

$service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

if ($service) {
    if ($service.Status -ne "Running") {
        Write-Output "Service $serviceName is not running. Starting it now..."
        
        try {
            Start-Service -Name $serviceName
            Write-Output "Service $serviceName has been started successfully!"
        } catch {
            Write-Error "Failed to start service $serviceName. Error: $_"
        }
    } else {
        Write-Output "Service $serviceName is already running."
    }
} else {
    Write-Error "Service $serviceName does not exist on this machine!"
}
