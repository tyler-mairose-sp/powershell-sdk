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

.PARAMETER AggregationBucketField
AggregationBucketField is the aggregation bucket field name
.PARAMETER Indices
Indices is a list of indices to use
.PARAMETER ObjectType
ObjectType is a PreDefinedSelectOption value IDENTITY PreDefinedSelectOptionIdentity ACCESS_PROFILE PreDefinedSelectOptionAccessProfile SOURCES PreDefinedSelectOptionSources ROLE PreDefinedSelectOptionRole ENTITLEMENT PreDefinedSelectOptionEntitlement
.PARAMETER Query
Query is a text
.OUTPUTS

FormElementDynamicDataSourceConfig<PSCustomObject>
#>

function Initialize-V2024FormElementDynamicDataSourceConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AggregationBucketField},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("accessprofiles", "accountactivities", "entitlements", "identities", "events", "roles", "*")]
        [String[]]
        ${Indices},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("IDENTITY", "ACCESS_PROFILE", "SOURCES", "ROLE", "ENTITLEMENT")]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024FormElementDynamicDataSourceConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "aggregationBucketField" = ${AggregationBucketField}
            "indices" = ${Indices}
            "objectType" = ${ObjectType}
            "query" = ${Query}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormElementDynamicDataSourceConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormElementDynamicDataSourceConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormElementDynamicDataSourceConfig<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFormElementDynamicDataSourceConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024FormElementDynamicDataSourceConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FormElementDynamicDataSourceConfig
        $AllProperties = ("aggregationBucketField", "indices", "objectType", "query")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregationBucketField"))) { #optional property not found
            $AggregationBucketField = $null
        } else {
            $AggregationBucketField = $JsonParameters.PSobject.Properties["aggregationBucketField"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "indices"))) { #optional property not found
            $Indices = $null
        } else {
            $Indices = $JsonParameters.PSobject.Properties["indices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectType"))) { #optional property not found
            $ObjectType = $null
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["objectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) { #optional property not found
            $Query = $null
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        $PSO = [PSCustomObject]@{
            "aggregationBucketField" = ${AggregationBucketField}
            "indices" = ${Indices}
            "objectType" = ${ObjectType}
            "query" = ${Query}
        }

        return $PSO
    }

}

