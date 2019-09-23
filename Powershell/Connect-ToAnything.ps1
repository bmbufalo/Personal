<# 

This script/function is designed to connect to the most commonly used administrative systems I use daily. Add this to your Powershell profile to allow you to easily add these common admin connections to your own toolbox!

@bmbufalo

#>

# Create a function that checks what version of Powershell is in use and set a variable that can be used by other functions. 
function NewPSCheck {

    if (6 -gt $psversiontable.PSVersion.Major) {
        $checkNewPS = $true
    }
    else {
        $checkNewPS = $false
    }
}

$useNewPS = NewPSCheck

$date = Get-Date -uFormat %Y%m%d%H%M
$hand = "Have a great day! :D" 
$whoami = whoami
$hostname = hostname

function ADDomain {
    param (
        # Domain
        [Parameter(AttributeValues)]
        [ParameterType]
        $ParameterName
    )

    # Connect to AD domain

    
    
}

function Connect-ToAnything {
    param (
        # Parameter help description
        [Parameter(AttributeValues)]
        [ParameterType]
        $ParameterName
    )

    # Triggers the correct functin below after menu selection. 

    "Welcome!"
    "Today is $date."     
}