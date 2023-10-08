$list_of_numbers=@()

$count_of_numbers=$args.Count

if ($count_of_numbers -eq 0)
{
    Write-Host "No numbers in the list to reverse"
}

if ($count_of_numbers -ne 0)
{
    for ($i = $count_of_numbers; $i -ge 0; $i--)
    {
        $list_of_numbers+=$args[$i]
    }

    foreach ($item in $list_of_numbers)
    {
         Write-Host -NoNewline "$item "
    }
}