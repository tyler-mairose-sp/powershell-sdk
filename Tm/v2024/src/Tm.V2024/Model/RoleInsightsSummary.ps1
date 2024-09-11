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

.PARAMETER NumberOfUpdates
Total number of roles with updates
.PARAMETER LastGenerated
The date-time role insights were last found.
.PARAMETER EntitlementsIncludedInRoles
The number of entitlements included in roles (vs free radicals).
.PARAMETER TotalNumberOfEntitlements
The total number of entitlements.
.PARAMETER IdentitiesWithAccessViaRoles
The number of identities in roles vs. identities with just entitlements and not in roles.
.PARAMETER TotalNumberOfIdentities
The total number of identities.
.OUTPUTS

RoleInsightsSummary<PSCustomObject>
#>

function Initialize-V2024RoleInsightsSummary {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfUpdates},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastGenerated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementsIncludedInRoles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalNumberOfEntitlements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentitiesWithAccessViaRoles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalNumberOfIdentities}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024RoleInsightsSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "numberOfUpdates" = ${NumberOfUpdates}
            "lastGenerated" = ${LastGenerated}
            "entitlementsIncludedInRoles" = ${EntitlementsIncludedInRoles}
            "totalNumberOfEntitlements" = ${TotalNumberOfEntitlements}
            "identitiesWithAccessViaRoles" = ${IdentitiesWithAccessViaRoles}
            "totalNumberOfIdentities" = ${TotalNumberOfIdentities}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleInsightsSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleInsightsSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleInsightsSummary<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRoleInsightsSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024RoleInsightsSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RoleInsightsSummary
        $AllProperties = ("numberOfUpdates", "lastGenerated", "entitlementsIncludedInRoles", "totalNumberOfEntitlements", "identitiesWithAccessViaRoles", "totalNumberOfIdentities")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfUpdates"))) { #optional property not found
            $NumberOfUpdates = $null
        } else {
            $NumberOfUpdates = $JsonParameters.PSobject.Properties["numberOfUpdates"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastGenerated"))) { #optional property not found
            $LastGenerated = $null
        } else {
            $LastGenerated = $JsonParameters.PSobject.Properties["lastGenerated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementsIncludedInRoles"))) { #optional property not found
            $EntitlementsIncludedInRoles = $null
        } else {
            $EntitlementsIncludedInRoles = $JsonParameters.PSobject.Properties["entitlementsIncludedInRoles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalNumberOfEntitlements"))) { #optional property not found
            $TotalNumberOfEntitlements = $null
        } else {
            $TotalNumberOfEntitlements = $JsonParameters.PSobject.Properties["totalNumberOfEntitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identitiesWithAccessViaRoles"))) { #optional property not found
            $IdentitiesWithAccessViaRoles = $null
        } else {
            $IdentitiesWithAccessViaRoles = $JsonParameters.PSobject.Properties["identitiesWithAccessViaRoles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalNumberOfIdentities"))) { #optional property not found
            $TotalNumberOfIdentities = $null
        } else {
            $TotalNumberOfIdentities = $JsonParameters.PSobject.Properties["totalNumberOfIdentities"].value
        }

        $PSO = [PSCustomObject]@{
            "numberOfUpdates" = ${NumberOfUpdates}
            "lastGenerated" = ${LastGenerated}
            "entitlementsIncludedInRoles" = ${EntitlementsIncludedInRoles}
            "totalNumberOfEntitlements" = ${TotalNumberOfEntitlements}
            "identitiesWithAccessViaRoles" = ${IdentitiesWithAccessViaRoles}
            "totalNumberOfIdentities" = ${TotalNumberOfIdentities}
        }

        return $PSO
    }

}

