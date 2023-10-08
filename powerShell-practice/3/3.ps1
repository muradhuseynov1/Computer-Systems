param([Parameter(Mandatory=$true)][string]$file_name)

if (Test-Path $file_name)
{
    $file_content = Get-Content $file_name
    $matchLine = ""
    $temp_cnt = 2
    foreach ($line in $file_content)
    {
        $item_counter=0
        $initials = ""
        foreach ($item in $line -split ' ')
        {
            $item_counter=$item_counter+1   
        }

        if ($item_counter -lt $temp_cnt)
        {
            $temp_cnt = $item_counter
            $matchLine = $line
        }
    }
    Write-Host $matchLine
}

else
{
    Write-Host "No such file"
}