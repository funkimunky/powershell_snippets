Get-CimInstance -class Win32Reg_AddRemovePrograms  | Where-Object{ 
    $_.DisplayName -ilike "Tek*"
} | Format-Table DisplayName, ProdID, Publisher, Version -AutoSize