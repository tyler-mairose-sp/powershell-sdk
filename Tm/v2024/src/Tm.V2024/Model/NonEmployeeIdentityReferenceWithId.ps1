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

.PARAMETER Type
No description available.
.PARAMETER Id
Identity id
.OUTPUTS

NonEmployeeIdentityReferenceWithId<PSCustomObject>
#>

function Initialize-V2024NonEmployeeIdentityReferenceWithId {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GOVERNANCE_GROUP", "IDENTITY")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024NonEmployeeIdentityReferenceWithId' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeIdentityReferenceWithId<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeIdentityReferenceWithId<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeIdentityReferenceWithId<PSCustomObject>
#>
function ConvertFrom-V2024JsonToNonEmployeeIdentityReferenceWithId {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024NonEmployeeIdentityReferenceWithId' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024NonEmployeeIdentityReferenceWithId
        $AllProperties = ("type", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
        }

        return $PSO
    }

}

