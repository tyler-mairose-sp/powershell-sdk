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

.PARAMETER ApprovalSchemes
List describing the steps in approving the revocation request
.OUTPUTS

Revocability<PSCustomObject>
#>

function Initialize-V2024Revocability {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApprovalSchemes}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024Revocability' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "approvalSchemes" = ${ApprovalSchemes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Revocability<PSCustomObject>

.DESCRIPTION

Convert from JSON to Revocability<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Revocability<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRevocability {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024Revocability' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Revocability
        $AllProperties = ("approvalSchemes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalSchemes"))) { #optional property not found
            $ApprovalSchemes = $null
        } else {
            $ApprovalSchemes = $JsonParameters.PSobject.Properties["approvalSchemes"].value
        }

        $PSO = [PSCustomObject]@{
            "approvalSchemes" = ${ApprovalSchemes}
        }

        return $PSO
    }

}

