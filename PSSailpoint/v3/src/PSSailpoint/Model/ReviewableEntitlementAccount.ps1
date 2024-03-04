#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Information about the status of the entitlement

.PARAMETER NativeIdentity
The native identity for this account
.PARAMETER Disabled
Indicates whether this account is currently disabled
.PARAMETER Locked
Indicates whether this account is currently locked
.PARAMETER Type
No description available.
.PARAMETER Id
The id associated with the account
.PARAMETER Name
The account name
.PARAMETER Created
When the account was created
.PARAMETER Modified
When the account was last modified
.PARAMETER ActivityInsights
No description available.
.OUTPUTS

ReviewableEntitlementAccount<PSCustomObject>
#>

function Initialize-ReviewableEntitlementAccount {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Disabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Locked} = $false,
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
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ActivityInsights}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ReviewableEntitlementAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "nativeIdentity" = ${NativeIdentity}
            "disabled" = ${Disabled}
            "locked" = ${Locked}
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "activityInsights" = ${ActivityInsights}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReviewableEntitlementAccount<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReviewableEntitlementAccount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReviewableEntitlementAccount<PSCustomObject>
#>
function ConvertFrom-JsonToReviewableEntitlementAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ReviewableEntitlementAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ReviewableEntitlementAccount
        $AllProperties = ("nativeIdentity", "disabled", "locked", "type", "id", "name", "created", "modified", "activityInsights")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) { #optional property not found
            $NativeIdentity = $null
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) { #optional property not found
            $Disabled = $null
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locked"))) { #optional property not found
            $Locked = $null
        } else {
            $Locked = $JsonParameters.PSobject.Properties["locked"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "activityInsights"))) { #optional property not found
            $ActivityInsights = $null
        } else {
            $ActivityInsights = $JsonParameters.PSobject.Properties["activityInsights"].value
        }

        $PSO = [PSCustomObject]@{
            "nativeIdentity" = ${NativeIdentity}
            "disabled" = ${Disabled}
            "locked" = ${Locked}
            "type" = ${Type}
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "activityInsights" = ${ActivityInsights}
        }

        return $PSO
    }

}

