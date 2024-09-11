#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

A reference to an Identity in an IDENTITY_LIST role membership criteria.

.PARAMETER Type
No description available.
.PARAMETER Id
Identity id
.PARAMETER Name
Human-readable display name of the Identity.
.PARAMETER AliasName
User name of the Identity
.OUTPUTS

RoleMembershipIdentity<PSCustomObject>
#>

function Initialize-BetaRoleMembershipIdentity {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCOUNT_CORRELATION_CONFIG", "ACCESS_PROFILE", "ACCESS_REQUEST_APPROVAL", "ACCOUNT", "APPLICATION", "CAMPAIGN", "CAMPAIGN_FILTER", "CERTIFICATION", "CLUSTER", "CONNECTOR_SCHEMA", "ENTITLEMENT", "GOVERNANCE_GROUP", "IDENTITY", "IDENTITY_PROFILE", "IDENTITY_REQUEST", "LIFECYCLE_STATE", "PASSWORD_POLICY", "ROLE", "RULE", "SOD_POLICY", "SOURCE", "TAG", "TAG_CATEGORY", "TASK_RESULT", "REPORT_RESULT", "SOD_VIOLATION", "ACCOUNT_ACTIVITY", "WORKGROUP")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AliasName}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaRoleMembershipIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "aliasName" = ${AliasName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMembershipIdentity<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMembershipIdentity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMembershipIdentity<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMembershipIdentity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaRoleMembershipIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMembershipIdentity
        $AllProperties = ("type", "id", "name", "aliasName")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aliasName"))) { #optional property not found
            $AliasName = $null
        } else {
            $AliasName = $JsonParameters.PSobject.Properties["aliasName"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "aliasName" = ${AliasName}
        }

        return $PSO
    }

}

