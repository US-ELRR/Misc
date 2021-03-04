$OldStyleFileName = "C:\Users\jgedney\Documents\AlignmentsOldstylelv3.json"
$NewStyleFileName = "C:\Users\jgedney\Documents\AlignmentsNewstylelv3.json"


[string[]] $List = @(
"https://w3id.org/xapi/tla#failed_session",
"https://w3id.org/xapi/tla#passed_session",
"https://w3id.org/xapi/tla#initialized",
"https://w3id.org/xapi/tla#launched",
"https://w3id.org/xapi/tla#certified",
"https://w3id.org/xapi/tla#completed",
"https://w3id.org/xapi/tla#passed",
"https://w3id.org/xapi/tla#failed",
"https://w3id.org/xapi/tla#terminated",
"https://w3id.org/xapi/tla/v0.10/templates#waived",
"https://w3id.org/xapi/tla#completed_session"
)

[string[]] $HostList = @(
"mbox::mailto:bob@example.org",
"mbox::mailto:phil@example.org"
)
$lastItem = $List[$List.Count - 1]
$lastone = $hostlist[$hostlist.Count - 1]

if (test-path -Path $OldStyleFileName ){ Remove-Item -Path $OldStyleFileName}
if (test-path -Path $NewStyleFileName){ Remove-Item -Path $NewStyleFileName}
New-Item -Path $OldStyleFileName
New-Item -Path $NewStyleFileName
 
Write-Output "{" | out-file -Filepath $OldStyleFileName -Append 

foreach ($name in $hostlist){
    Write-Output "    `"$name`": {" | out-file -Filepath $OldStyleFileName -Append 
    foreach ($item in $list)
    { 
        $rand = (Get-Random -Maximum 9 -Minimum (-9))/10 
        $randstr =  $rand.ToString("N1")

        if ($lastItem -ieq $item){
            Write-Output "        `"$item`": $randstr" | out-file -Filepath $OldStyleFileName -Append 
        }else{
            Write-Output "        `"$item`": $randstr," | out-file -Filepath $OldStyleFileName -Append 
        }
    }
    if ($lastone -ieq $name){
    Write-Output "    }" | out-file -Filepath $OldStyleFileName -Append 
    }else{
    Write-Output "    }," | out-file -Filepath $OldStyleFileName -Append 
    }
}
Write-Output "}" | out-file -Filepath $OldStyleFileName -Append 



 
Write-Output "[" | out-file -Filepath $NewStyleFileName -Append 

foreach ($name in $hostlist){
    Write-Output "    {" | out-file -Filepath $NewStyleFileName -Append 
    Write-Output "    `"id`":`"$name`"," | out-file -Filepath $NewStyleFileName -Append 
    Write-Output "    `"type`": `"Agent`"," | out-file -Filepath $NewStyleFileName -Append 
    Write-Output "    `"alignments`":[" | out-file -Filepath $NewStyleFileName -Append 
    foreach ($item in $list)
    { 
        $rand = (Get-Random -Maximum 9 -Minimum (-9))/10 
        $randstr =  $rand.ToString("N1")
        Write-Output "        {" | out-file -Filepath $NewStyleFileName -Append 
        Write-Output "        `"component`": `"$item`","  | out-file -Filepath $NewStyleFileName -Append 
        Write-Output "        `"weight`": $randstr" | out-file -Filepath $NewStyleFileName -Append 
        if ($lastItem -ieq $item){
            Write-Output "        }" | out-file -Filepath $NewStyleFileName -Append 
        }else{
            Write-Output "        }," | out-file -Filepath $NewStyleFileName -Append 
        }
    }
    if ($lastone -ieq $name){
    Write-Output "    ]}" | out-file -Filepath $NewStyleFileName -Append 
    }else{
    Write-Output "    ]}," | out-file -Filepath $NewStyleFileName -Append 
    }
}
Write-Output "]" | out-file -Filepath $NewStyleFileName -Append 

