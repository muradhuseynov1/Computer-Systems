if ($args.Count -ne 2)
{
    Write-Host "2 arguments needed"
}

if ($args.Count -eq 2)
{
    [int]$first = $args[0]
    [int]$count_of_elements = $args[1]

    $argument = $first
    Write-Host -NoNewline "$argument "

    for ($i = 1; $i -lt $count_of_elements; $i++)
    {
        $argument = $argument + $i
        Write-Host -NoNewline "$argument "
    }
}