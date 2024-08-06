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
The identity ID
.PARAMETER Item
No description available.
.OUTPUTS

RecommendationRequest<PSCustomObject>
#>

function Initialize-V2024RecommendationRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Item}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024RecommendationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "item" = ${Item}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RecommendationRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to RecommendationRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RecommendationRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRecommendationRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024RecommendationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RecommendationRequest
        $AllProperties = ("identityId", "item")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "item"))) { #optional property not found
            $Item = $null
        } else {
            $Item = $JsonParameters.PSobject.Properties["item"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "item" = ${Item}
        }

        return $PSO
    }

}

