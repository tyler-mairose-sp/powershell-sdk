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

.PARAMETER ExcludeTypes
Object type names to be excluded from an sp-config export command.
.PARAMETER IncludeTypes
Object type names to be included in an sp-config export command. IncludeTypes takes precedence over excludeTypes.
.PARAMETER ObjectOptions
Additional options targeting specific objects related to each item in the includeTypes field
.OUTPUTS

ExportOptions<PSCustomObject>
#>

function Initialize-V2024ExportOptions {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ACCESS_REQUEST_CONFIG", "ATTR_SYNC_SOURCE_CONFIG", "AUTH_ORG", "CAMPAIGN_FILTER", "FORM_DEFINITION", "GOVERNANCE_GROUP", "IDENTITY_OBJECT_CONFIG", "IDENTITY_PROFILE", "LIFECYCLE_STATE", "NOTIFICATION_TEMPLATE", "PASSWORD_POLICY", "PASSWORD_SYNC_GROUP", "PUBLIC_IDENTITIES_CONFIG", "ROLE", "RULE", "SEGMENT", "SERVICE_DESK_INTEGRATION", "SOD_POLICY", "SOURCE", "TAG", "TRANSFORM", "TRIGGER_SUBSCRIPTION", "WORKFLOW")]
        [String[]]
        ${ExcludeTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ACCESS_REQUEST_CONFIG", "ATTR_SYNC_SOURCE_CONFIG", "AUTH_ORG", "CAMPAIGN_FILTER", "FORM_DEFINITION", "GOVERNANCE_GROUP", "IDENTITY_OBJECT_CONFIG", "IDENTITY_PROFILE", "LIFECYCLE_STATE", "NOTIFICATION_TEMPLATE", "PASSWORD_POLICY", "PASSWORD_SYNC_GROUP", "PUBLIC_IDENTITIES_CONFIG", "ROLE", "RULE", "SEGMENT", "SERVICE_DESK_INTEGRATION", "SOD_POLICY", "SOURCE", "TAG", "TRANSFORM", "TRIGGER_SUBSCRIPTION", "WORKFLOW")]
        [String[]]
        ${IncludeTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ObjectOptions}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ExportOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "excludeTypes" = ${ExcludeTypes}
            "includeTypes" = ${IncludeTypes}
            "objectOptions" = ${ObjectOptions}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ExportOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ExportOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ExportOptions<PSCustomObject>
#>
function ConvertFrom-V2024JsonToExportOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ExportOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ExportOptions
        $AllProperties = ("excludeTypes", "includeTypes", "objectOptions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "excludeTypes"))) { #optional property not found
            $ExcludeTypes = $null
        } else {
            $ExcludeTypes = $JsonParameters.PSobject.Properties["excludeTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeTypes"))) { #optional property not found
            $IncludeTypes = $null
        } else {
            $IncludeTypes = $JsonParameters.PSobject.Properties["includeTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectOptions"))) { #optional property not found
            $ObjectOptions = $null
        } else {
            $ObjectOptions = $JsonParameters.PSobject.Properties["objectOptions"].value
        }

        $PSO = [PSCustomObject]@{
            "excludeTypes" = ${ExcludeTypes}
            "includeTypes" = ${IncludeTypes}
            "objectOptions" = ${ObjectOptions}
        }

        return $PSO
    }

}

