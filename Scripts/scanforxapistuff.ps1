class ditem
{
    # Optionally, add attributes to prevent invalid values
    [ValidateNotNullOrEmpty()][string]$Type
    [ValidateNotNullOrEmpty()][string]$Label
}

    $items = @()

$modeldata = (get-content -Path 'C:\Users\jgedney\source\repos\Misc\Objects\MOM_0_13_0.json' | ConvertFrom-Json )

foreach ($datum in $modeldata.concepts){
       $item = New-Object PSObject
       $Item | add-member -type NoteProperty -Name "type" -Value $datum.type
       $Item | add-member -type NoteProperty -Name "label" -Value $datum.prefLabel.en
       $items = $items+ $item

        
}
foreach ($itema in $Items){
write-host $itema.label  "("$itema.type")"   
}



