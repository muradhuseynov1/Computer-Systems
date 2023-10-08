if ($args.Count -eq 1)
{
    $file_name = $args[0]
    if (Test-Path $file_name) 
    {
        $count_line=1
        $file_content=Get-Content $file_name
        foreach ($line in $file_content)
        {
            [int]$even_sum=0
            [int]$odd_sum=0
            if ($count_line % 2 -eq 0)
            {
                foreach($item in $line -split ' ')
                {
                    if ([int]$item % 2 -eq 0)
                    {
                        $even_sum=$even_sum+$item
                    }
                }
            }
            elseif ($count_line % 2 -ne 0)
            {

                foreach ($item in $line -split ' ')
                    {
                        
                        if([int]$item % 2 -ne 0)
                        {
                            $odd_sum=$odd_sum+$item
                        }
                    }
            }

            if($count_line % 2 -eq 0)
            {
                Write-Host "$even_sum "
            }
            else
            {
                Write-Host "$odd_sum "
            }
            $count_line=$count_line+1
        }

    }
    else 
    {
        Write-Host "No such file"
    }
}
else {Write-Host "Give a file name"}