function switch-psuser {
    
    Param(
        [Parameter(Position=0)]
        [ValidateSet("adminsystem","administrator")]
        $User = "adminsystem"
    )

    switch($User)
    {
        'adminsystem'   { $username = "pkc\dwthomson" ; $pw = "My new job in IT 88"}
        'administrator' { $username = "pkc\apps2" ; $pw = "This is now IT 9" }
    }

    $password = $pw | ConvertTo-SecureString -AsPlainText -Force
    $cred = New-Object System.Management.Automation.PSCredential -ArgumentList $username,$password
    New-PSSession -Credential $cred | Enter-PSSession
}
