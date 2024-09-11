#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Response model for configuration test of a given MFA method

.OUTPUTS

MfaConfigTestResponse<PSCustomObject>
#>

function Initialize-V2024MfaConfigTestResponse {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024MfaConfigTestResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MfaConfigTestResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to MfaConfigTestResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MfaConfigTestResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToMfaConfigTestResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024MfaConfigTestResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024MfaConfigTestResponse
        $AllProperties = ("state", "error")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "error"))) { #optional property not found
            $VarError = $null
        } else {
            $VarError = $JsonParameters.PSobject.Properties["error"].value
        }

        $PSO = [PSCustomObject]@{
            "state" = ${State}
            "error" = ${VarError}
        }

        return $PSO
    }

}

