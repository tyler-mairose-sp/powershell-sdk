#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER MaximumAttempts
The maximum attempts allowed before lockout occurs.
.PARAMETER LockoutDuration
The total time in minutes a user will be locked out.
.PARAMETER LockoutWindow
A rolling window where authentication attempts in a series count towards the maximum before lockout occurs.
.OUTPUTS

LockoutConfiguration<PSCustomObject>
#>

function Initialize-LockoutConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${MaximumAttempts},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${LockoutDuration},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${LockoutWindow}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => LockoutConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "maximumAttempts" = ${MaximumAttempts}
            "lockoutDuration" = ${LockoutDuration}
            "lockoutWindow" = ${LockoutWindow}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LockoutConfiguration<PSCustomObject>

.DESCRIPTION

Convert from JSON to LockoutConfiguration<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LockoutConfiguration<PSCustomObject>
#>
function ConvertFrom-JsonToLockoutConfiguration {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => LockoutConfiguration' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LockoutConfiguration
        $AllProperties = ("maximumAttempts", "lockoutDuration", "lockoutWindow")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "maximumAttempts"))) { #optional property not found
            $MaximumAttempts = $null
        } else {
            $MaximumAttempts = $JsonParameters.PSobject.Properties["maximumAttempts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lockoutDuration"))) { #optional property not found
            $LockoutDuration = $null
        } else {
            $LockoutDuration = $JsonParameters.PSobject.Properties["lockoutDuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lockoutWindow"))) { #optional property not found
            $LockoutWindow = $null
        } else {
            $LockoutWindow = $JsonParameters.PSobject.Properties["lockoutWindow"].value
        }

        $PSO = [PSCustomObject]@{
            "maximumAttempts" = ${MaximumAttempts}
            "lockoutDuration" = ${LockoutDuration}
            "lockoutWindow" = ${LockoutWindow}
        }

        return $PSO
    }

}

