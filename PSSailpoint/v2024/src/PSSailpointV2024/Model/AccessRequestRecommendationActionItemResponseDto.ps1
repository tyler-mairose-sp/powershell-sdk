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

.PARAMETER IdentityId
The identity ID taking the action.
.PARAMETER Access
No description available.
.PARAMETER Timestamp
No description available.
.OUTPUTS

AccessRequestRecommendationActionItemResponseDto<PSCustomObject>
#>

function Initialize-V2024AccessRequestRecommendationActionItemResponseDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Access},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Timestamp}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AccessRequestRecommendationActionItemResponseDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "access" = ${Access}
            "timestamp" = ${Timestamp}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestRecommendationActionItemResponseDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestRecommendationActionItemResponseDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestRecommendationActionItemResponseDto<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessRequestRecommendationActionItemResponseDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AccessRequestRecommendationActionItemResponseDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessRequestRecommendationActionItemResponseDto
        $AllProperties = ("identityId", "access", "timestamp")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "access"))) { #optional property not found
            $Access = $null
        } else {
            $Access = $JsonParameters.PSobject.Properties["access"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "access" = ${Access}
            "timestamp" = ${Timestamp}
        }

        return $PSO
    }

}

