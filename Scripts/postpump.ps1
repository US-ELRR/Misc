
foreach($line in Get-Content "C:\Users\jgedney\Documents\sample-output.txt" ) {
    if($line -match $regex){
        Invoke-WebRequest -UseDefaultCredentials -Method POST -Body $line -Uri "http://localhost/xAPIReceiver/api/xapi" -ContentType application/json
        Start-Sleep -Seconds 2
    }
}