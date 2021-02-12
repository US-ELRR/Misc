$OldStyleFileName = "C:\Users\jgedney\Documents\AlignmentsOldstylelv3.json"
$NewStyleFileName = "C:\Users\jgedney\Documents\AlignmentsNewstylelv3.json"


[string[]] $List = @(
"http://w3id.org/xapi/tla/verbs/certified",
"https://adlnet.gov/expapi/verbs/passed",
"https://adlnet.gov/expapi/verbs/failed",
"https://adlnet.gov/expapi/verbs/completed",
"https://adlnet.gov/expapi/verbs/initialized",
"https://adlnet.gov/expapi/verbs/terminated",
"https://adlnet.gov/expapi/verbs/launched",
"http://w3id.org/xapi/tla/verbs/waived",
"http://profiles.usalearning.net/xapi/30c27857-f989-48e2-98b8-c4589ab9df72/verb/satisfied",
"http://profiles.usalearning.net/xapi/30c27857-f989-48e2-98b8-c4589ab9df72/verb/abandoned",
"https://w3id.org/xapi/tla/verbs/assessed",
"https://w3id.org/xapi/tla/verbs/contextualized",
"https://w3id.org/xapi/tla/verbs/located",
"https://w3id.org/xapi/tla/verbs/socialized",
"https://w3id.org/xapi/tla/verbs/captured",
"https://w3id.org/xapi/tla/verbs/asserted",
"https://w3id.org/xapi/tla/verbs/validated",
"https://w3id.org/xapi/tla/verbs/inferred",
"https://w3id.org/xapi/tla/verbs/qualified",
"https://w3id.org/xapi/tla/verbs/conferred",
"https://w3id.org/xapi/tla/verbs/certified",
"https://w3id.org/xapi/tla/verbs/verified" 
)

[string[]] $HostList = @(
"mbox::mailto:bob@example.org",
"mbox::mailto:phil@example.org",
"mbox::mailto:sally@example.org",
"mbox::mailto:steve@example.org",
"mbox::mailto:fred@example.org",
"mbox::mailto:alice@example.org"
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

