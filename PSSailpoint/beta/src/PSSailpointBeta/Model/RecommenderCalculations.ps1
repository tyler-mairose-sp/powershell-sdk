#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER IdentityId
The ID of the identity
.PARAMETER EntitlementId
The entitlement ID
.PARAMETER Recommendation
The actual recommendation
.PARAMETER OverallWeightedScore
The overall weighted score
.PARAMETER FeatureWeightedScores
The weighted score of each individual feature
.PARAMETER Threshold
The configured value against which the overallWeightedScore is compared
.PARAMETER IdentityAttributes
The values for your configured features
.PARAMETER FeatureValues
No description available.
.OUTPUTS

RecommenderCalculations<PSCustomObject>
#>

function Initialize-BetaRecommenderCalculations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${EntitlementId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Recommendation},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${OverallWeightedScore},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${FeatureWeightedScores},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Threshold},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${IdentityAttributes},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${FeatureValues}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRecommenderCalculations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "entitlementId" = ${EntitlementId}
            "recommendation" = ${Recommendation}
            "overallWeightedScore" = ${OverallWeightedScore}
            "featureWeightedScores" = ${FeatureWeightedScores}
            "threshold" = ${Threshold}
            "identityAttributes" = ${IdentityAttributes}
            "featureValues" = ${FeatureValues}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RecommenderCalculations<PSCustomObject>

.DESCRIPTION

Convert from JSON to RecommenderCalculations<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RecommenderCalculations<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRecommenderCalculations {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRecommenderCalculations' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRecommenderCalculations
        $AllProperties = ("identityId", "entitlementId", "recommendation", "overallWeightedScore", "featureWeightedScores", "threshold", "identityAttributes", "featureValues")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementId"))) { #optional property not found
            $EntitlementId = $null
        } else {
            $EntitlementId = $JsonParameters.PSobject.Properties["entitlementId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recommendation"))) { #optional property not found
            $Recommendation = $null
        } else {
            $Recommendation = $JsonParameters.PSobject.Properties["recommendation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "overallWeightedScore"))) { #optional property not found
            $OverallWeightedScore = $null
        } else {
            $OverallWeightedScore = $JsonParameters.PSobject.Properties["overallWeightedScore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "featureWeightedScores"))) { #optional property not found
            $FeatureWeightedScores = $null
        } else {
            $FeatureWeightedScores = $JsonParameters.PSobject.Properties["featureWeightedScores"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "threshold"))) { #optional property not found
            $Threshold = $null
        } else {
            $Threshold = $JsonParameters.PSobject.Properties["threshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttributes"))) { #optional property not found
            $IdentityAttributes = $null
        } else {
            $IdentityAttributes = $JsonParameters.PSobject.Properties["identityAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "featureValues"))) { #optional property not found
            $FeatureValues = $null
        } else {
            $FeatureValues = $JsonParameters.PSobject.Properties["featureValues"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "entitlementId" = ${EntitlementId}
            "recommendation" = ${Recommendation}
            "overallWeightedScore" = ${OverallWeightedScore}
            "featureWeightedScores" = ${FeatureWeightedScores}
            "threshold" = ${Threshold}
            "identityAttributes" = ${IdentityAttributes}
            "featureValues" = ${FeatureValues}
        }

        return $PSO
    }

}

