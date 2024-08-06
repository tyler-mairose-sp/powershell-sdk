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

.PARAMETER AssociationType
association type with the identity
.PARAMETER Entities
the specific resource this identity has ownership on
.OUTPUTS

IdentityAssociationDetailsAssociationDetailsInner<PSCustomObject>
#>

function Initialize-V2024IdentityAssociationDetailsAssociationDetailsInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AssociationType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Entities}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024IdentityAssociationDetailsAssociationDetailsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "associationType" = ${AssociationType}
            "entities" = ${Entities}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityAssociationDetailsAssociationDetailsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityAssociationDetailsAssociationDetailsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityAssociationDetailsAssociationDetailsInner<PSCustomObject>
#>
function ConvertFrom-V2024JsonToIdentityAssociationDetailsAssociationDetailsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024IdentityAssociationDetailsAssociationDetailsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024IdentityAssociationDetailsAssociationDetailsInner
        $AllProperties = ("associationType", "entities")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "associationType"))) { #optional property not found
            $AssociationType = $null
        } else {
            $AssociationType = $JsonParameters.PSobject.Properties["associationType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entities"))) { #optional property not found
            $Entities = $null
        } else {
            $Entities = $JsonParameters.PSobject.Properties["entities"].value
        }

        $PSO = [PSCustomObject]@{
            "associationType" = ${AssociationType}
            "entities" = ${Entities}
        }

        return $PSO
    }

}

