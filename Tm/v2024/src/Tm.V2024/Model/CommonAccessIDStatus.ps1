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

No description available.

.PARAMETER ConfirmedIds
List of confirmed common access ids.
.PARAMETER DeniedIds
List of denied common access ids.
.OUTPUTS

CommonAccessIDStatus<PSCustomObject>
#>

function Initialize-V2024CommonAccessIDStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ConfirmedIds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${DeniedIds}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024CommonAccessIDStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "confirmedIds" = ${ConfirmedIds}
            "deniedIds" = ${DeniedIds}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CommonAccessIDStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to CommonAccessIDStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CommonAccessIDStatus<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCommonAccessIDStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024CommonAccessIDStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CommonAccessIDStatus
        $AllProperties = ("confirmedIds", "deniedIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "confirmedIds"))) { #optional property not found
            $ConfirmedIds = $null
        } else {
            $ConfirmedIds = $JsonParameters.PSobject.Properties["confirmedIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deniedIds"))) { #optional property not found
            $DeniedIds = $null
        } else {
            $DeniedIds = $JsonParameters.PSobject.Properties["deniedIds"].value
        }

        $PSO = [PSCustomObject]@{
            "confirmedIds" = ${ConfirmedIds}
            "deniedIds" = ${DeniedIds}
        }

        return $PSO
    }

}

