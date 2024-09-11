#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ObjectMappingId
Id of the object mapping
.PARAMETER ObjectType
Type of the object the mapping value applies to
.PARAMETER JsonPath
JSONPath expression denoting the path within the object where the mapping value should be applied
.PARAMETER SourceValue
Original value at the jsonPath location within the object
.PARAMETER TargetValue
Value to be assigned at the jsonPath location within the object
.PARAMETER Enabled
Whether or not this object mapping is enabled
.PARAMETER Created
Object mapping creation timestamp
.PARAMETER Modified
Object mapping latest update timestamp
.OUTPUTS

ObjectMappingResponse<PSCustomObject>
#>

function Initialize-ObjectMappingResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ObjectMappingId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ACCESS_REQUEST_CONFIG", "ATTR_SYNC_SOURCE_CONFIG", "AUTH_ORG", "CAMPAIGN_FILTER", "ENTITLEMENT", "FORM_DEFINITION", "GOVERNANCE_GROUP", "IDENTITY", "IDENTITY_OBJECT_CONFIG", "IDENTITY_PROFILE", "LIFECYCLE_STATE", "NOTIFICATION_TEMPLATE", "PASSWORD_POLICY", "PASSWORD_SYNC_GROUP", "PUBLIC_IDENTITIES_CONFIG", "ROLE", "RULE", "SEGMENT", "SERVICE_DESK_INTEGRATION", "SOD_POLICY", "SOURCE", "TAG", "TRANSFORM", "TRIGGER_SUBSCRIPTION", "WORKFLOW")]
        [String]
        ${ObjectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${JsonPath},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceValue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TargetValue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => ObjectMappingResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "objectMappingId" = ${ObjectMappingId}
            "objectType" = ${ObjectType}
            "jsonPath" = ${JsonPath}
            "sourceValue" = ${SourceValue}
            "targetValue" = ${TargetValue}
            "enabled" = ${Enabled}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ObjectMappingResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ObjectMappingResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ObjectMappingResponse<PSCustomObject>
#>
function ConvertFrom-JsonToObjectMappingResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => ObjectMappingResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ObjectMappingResponse
        $AllProperties = ("objectMappingId", "objectType", "jsonPath", "sourceValue", "targetValue", "enabled", "created", "modified")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectMappingId"))) { #optional property not found
            $ObjectMappingId = $null
        } else {
            $ObjectMappingId = $JsonParameters.PSobject.Properties["objectMappingId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectType"))) { #optional property not found
            $ObjectType = $null
        } else {
            $ObjectType = $JsonParameters.PSobject.Properties["objectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "jsonPath"))) { #optional property not found
            $JsonPath = $null
        } else {
            $JsonPath = $JsonParameters.PSobject.Properties["jsonPath"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceValue"))) { #optional property not found
            $SourceValue = $null
        } else {
            $SourceValue = $JsonParameters.PSobject.Properties["sourceValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetValue"))) { #optional property not found
            $TargetValue = $null
        } else {
            $TargetValue = $JsonParameters.PSobject.Properties["targetValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
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

        $PSO = [PSCustomObject]@{
            "objectMappingId" = ${ObjectMappingId}
            "objectType" = ${ObjectType}
            "jsonPath" = ${JsonPath}
            "sourceValue" = ${SourceValue}
            "targetValue" = ${TargetValue}
            "enabled" = ${Enabled}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}

