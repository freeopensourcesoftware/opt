$art = Get-Content 'art.txt' -Raw
$colors = @('Red','Yellow','Green','Cyan','Blue','Magenta')
$i=0
($art -split '\n') | ForEach-Object {
    $line = $_
    $line.ToCharArray() | ForEach-Object {
        Write-Host $_ -NoNewline -ForegroundColor $colors[$i % $colors.Length]
        $i++
    }
    Write-Host
    Start-Sleep -Milliseconds 25
}