$files = Get-ChildItem ".\slides-sections\*.md"
$n = 0
foreach ($f in $files) {
    $text = [System.IO.File]::ReadAllText($f.FullName)
    $changed = $false
    $pattern = [System.Text.RegularExpressions.Regex]::new('(?s)<!--(.*?)-->')
    foreach ($m in $pattern.Matches($text)) {
        $inner = $m.Groups[1].Value
        $crlf_sep = "`r`n`r`n- - -`r`n`r`n"
        $lf_sep   = "`n`n- - -`n`n"
        $sep = if ($inner.Contains($crlf_sep)) { $crlf_sep } else { $lf_sep }
        $parts = $inner.Split([string[]]@($sep), [System.StringSplitOptions]::None)
        if ($parts.Count -eq 4) {
            # Current order: [0]=meta(🎯🎭🖥️)  [1]=🇫🇷  [2]=🇬🇧  [3]=🎨
            # Target order:  [1]=🇫🇷  [2]=🇬🇧  [0]=meta  [3]=🎨
            $newInner = $parts[1] + $sep + $parts[2] + $sep + $parts[0] + $sep + $parts[3]
            $text = $text.Replace("<!--" + $inner + "-->", "<!--" + $newInner + "-->")
            $changed = $true
        }
    }
    if ($changed) {
        [System.IO.File]::WriteAllText($f.FullName, $text)
        $n++
        Write-Host "Updated: $($f.Name)"
    } else {
        Write-Host "Skipped:  $($f.Name)"
    }
}
Write-Host "Total updated: $n"
