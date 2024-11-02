$bowtie = { 
    $bow = ([Console]::WindowWidth - 1)
    $tie = [char]::ConvertFromUtf32(0x1F380)

    while ($true) {
        [Console]::Write(('{0}[s{0}[0;{1}H{0}[00;00m{2}{0}[m{0}[u' -f [char] 0x1B, $bow, $tie))
        Start-Sleep -Seconds 1
    }
}

$null = [powershell]::Create().AddScript($bowtie).BeginInvoke()
