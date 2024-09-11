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

.PARAMETER Tenant
Tenant name.
.PARAMETER Id
Identity ID.
.OUTPUTS

AuthProfileSummary<PSCustomObject>
#>

function Initialize-V2024AuthProfileSummary {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Tenant},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024AuthProfileSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "tenant" = ${Tenant}
            "id" = ${Id}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AuthProfileSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to AuthProfileSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AuthProfileSummary<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAuthProfileSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024AuthProfileSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AuthProfileSummary
        $AllProperties = ("tenant", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tenant"))) { #optional property not found
            $Tenant = $null
        } else {
            $Tenant = $JsonParameters.PSobject.Properties["tenant"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "tenant" = ${Tenant}
            "id" = ${Id}
        }

        return $PSO
    }

}

