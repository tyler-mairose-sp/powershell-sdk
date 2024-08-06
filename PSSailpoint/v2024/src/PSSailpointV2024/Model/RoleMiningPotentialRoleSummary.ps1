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

.PARAMETER Id
Id of the potential role
.PARAMETER Name
Name of the potential role
.PARAMETER PotentialRoleRef
No description available.
.PARAMETER IdentityCount
The number of identities in a potential role.
.PARAMETER EntitlementCount
The number of entitlements in a potential role.
.PARAMETER IdentityGroupStatus
The status for this identity group which can be ""REQUESTED"" or ""OBTAINED""
.PARAMETER ProvisionState
No description available.
.PARAMETER RoleId
ID of the provisioned role in IIQ or IDN.  Null if this potential role has not been provisioned.
.PARAMETER Density
The density metric (0-100) of this potential role. Higher density values indicate higher similarity amongst the identities.
.PARAMETER Freshness
The freshness metric (0-100) of this potential role. Higher freshness values indicate this potential role is more distinctive compared to existing roles.
.PARAMETER Quality
The quality metric (0-100) of this potential role. Higher quality values indicate this potential role has high density and freshness.
.PARAMETER Type
No description available.
.PARAMETER CreatedBy
No description available.
.PARAMETER CreatedDate
The date-time when this potential role was created.
.PARAMETER Saved
The potential role's saved status
.PARAMETER Description
Description of the potential role
.PARAMETER Session
No description available.
.OUTPUTS

RoleMiningPotentialRoleSummary<PSCustomObject>
#>

function Initialize-V2024RoleMiningPotentialRoleSummary {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PotentialRoleRef},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${IdentityCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityGroupStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("POTENTIAL", "PENDING", "COMPLETE", "FAILED")]
        [PSCustomObject]
        ${ProvisionState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RoleId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Density},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Freshness},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Quality},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SPECIALIZED", "COMMON")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CreatedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Saved} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Session}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024RoleMiningPotentialRoleSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "potentialRoleRef" = ${PotentialRoleRef}
            "identityCount" = ${IdentityCount}
            "entitlementCount" = ${EntitlementCount}
            "identityGroupStatus" = ${IdentityGroupStatus}
            "provisionState" = ${ProvisionState}
            "roleId" = ${RoleId}
            "density" = ${Density}
            "freshness" = ${Freshness}
            "quality" = ${Quality}
            "type" = ${Type}
            "createdBy" = ${CreatedBy}
            "createdDate" = ${CreatedDate}
            "saved" = ${Saved}
            "description" = ${Description}
            "session" = ${Session}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningPotentialRoleSummary<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningPotentialRoleSummary<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningPotentialRoleSummary<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRoleMiningPotentialRoleSummary {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024RoleMiningPotentialRoleSummary' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RoleMiningPotentialRoleSummary
        $AllProperties = ("id", "name", "potentialRoleRef", "identityCount", "entitlementCount", "identityGroupStatus", "provisionState", "roleId", "density", "freshness", "quality", "type", "createdBy", "createdDate", "saved", "description", "session")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "potentialRoleRef"))) { #optional property not found
            $PotentialRoleRef = $null
        } else {
            $PotentialRoleRef = $JsonParameters.PSobject.Properties["potentialRoleRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityCount"))) { #optional property not found
            $IdentityCount = $null
        } else {
            $IdentityCount = $JsonParameters.PSobject.Properties["identityCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementCount"))) { #optional property not found
            $EntitlementCount = $null
        } else {
            $EntitlementCount = $JsonParameters.PSobject.Properties["entitlementCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityGroupStatus"))) { #optional property not found
            $IdentityGroupStatus = $null
        } else {
            $IdentityGroupStatus = $JsonParameters.PSobject.Properties["identityGroupStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisionState"))) { #optional property not found
            $ProvisionState = $null
        } else {
            $ProvisionState = $JsonParameters.PSobject.Properties["provisionState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "roleId"))) { #optional property not found
            $RoleId = $null
        } else {
            $RoleId = $JsonParameters.PSobject.Properties["roleId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "density"))) { #optional property not found
            $Density = $null
        } else {
            $Density = $JsonParameters.PSobject.Properties["density"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "freshness"))) { #optional property not found
            $Freshness = $null
        } else {
            $Freshness = $JsonParameters.PSobject.Properties["freshness"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "quality"))) { #optional property not found
            $Quality = $null
        } else {
            $Quality = $JsonParameters.PSobject.Properties["quality"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) { #optional property not found
            $CreatedBy = $null
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdDate"))) { #optional property not found
            $CreatedDate = $null
        } else {
            $CreatedDate = $JsonParameters.PSobject.Properties["createdDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "saved"))) { #optional property not found
            $Saved = $null
        } else {
            $Saved = $JsonParameters.PSobject.Properties["saved"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "session"))) { #optional property not found
            $Session = $null
        } else {
            $Session = $JsonParameters.PSobject.Properties["session"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "potentialRoleRef" = ${PotentialRoleRef}
            "identityCount" = ${IdentityCount}
            "entitlementCount" = ${EntitlementCount}
            "identityGroupStatus" = ${IdentityGroupStatus}
            "provisionState" = ${ProvisionState}
            "roleId" = ${RoleId}
            "density" = ${Density}
            "freshness" = ${Freshness}
            "quality" = ${Quality}
            "type" = ${Type}
            "createdBy" = ${CreatedBy}
            "createdDate" = ${CreatedDate}
            "saved" = ${Saved}
            "description" = ${Description}
            "session" = ${Session}
        }

        return $PSO
    }

}

