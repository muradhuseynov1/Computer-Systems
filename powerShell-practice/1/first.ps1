if ($args.Count -ne 3)
{
    Write-Host "The number of parameters should be 3!"
}

if ($args.Count -eq 3)
{
    [int]$first = $args[0]
    [int]$second = $args[1]
    [int]$third = $args[2]
}

$result = ($first + $second) - $third
Write-Host $result
