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

.PARAMETER AccessType
the access item type. entitlement in this case
.PARAMETER Id
the access item id
.PARAMETER DisplayName
the access item display name
.PARAMETER SourceName
the associated source name if it exists
.PARAMETER AppRoleId
the app role id
.OUTPUTS

AccessItemAppResponse<PSCustomObject>
#>

function Initialize-V2024AccessItemAppResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AppRoleId}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AccessItemAppResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessType" = ${AccessType}
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "sourceName" = ${SourceName}
            "appRoleId" = ${AppRoleId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessItemAppResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessItemAppResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessItemAppResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessItemAppResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AccessItemAppResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessItemAppResponse
        $AllProperties = ("accessType", "id", "displayName", "sourceName", "appRoleId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessType"))) { #optional property not found
            $AccessType = $null
        } else {
            $AccessType = $JsonParameters.PSobject.Properties["accessType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayName"))) { #optional property not found
            $DisplayName = $null
        } else {
            $DisplayName = $JsonParameters.PSobject.Properties["displayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) { #optional property not found
            $SourceName = $null
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appRoleId"))) { #optional property not found
            $AppRoleId = $null
        } else {
            $AppRoleId = $JsonParameters.PSobject.Properties["appRoleId"].value
        }

        $PSO = [PSCustomObject]@{
            "accessType" = ${AccessType}
            "id" = ${Id}
            "displayName" = ${DisplayName}
            "sourceName" = ${SourceName}
            "appRoleId" = ${AppRoleId}
        }

        return $PSO
    }

}

