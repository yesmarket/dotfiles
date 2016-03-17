$dir = "$(Split-Path -Parent $PSCommandPath)`\"
gci $dir -Filter .* | % {
	$t = $_.Name
	$l =  if ($t.LastIndexOf("-") -gt 0) { $t.SubString(0, $t.LastIndexOf("-")) } else { $t }
	iex "cmd /c mklink /H ..`\$l $t"
}
