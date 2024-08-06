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

Extra attributes map(dictionary) for the task.

.PARAMETER AppId
The id of the source
.PARAMETER OptimizedAggregation
The indicator if the aggregation process was enabled/disabled for the aggregation job
.OUTPUTS

LoadAccountsTaskTaskAttributes<PSCustomObject>
#>

function Initialize-V2024LoadAccountsTaskTaskAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AppId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OptimizedAggregation}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024LoadAccountsTaskTaskAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "appId" = ${AppId}
            "optimizedAggregation" = ${OptimizedAggregation}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LoadAccountsTaskTaskAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to LoadAccountsTaskTaskAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LoadAccountsTaskTaskAttributes<PSCustomObject>
#>
function ConvertFrom-V2024JsonToLoadAccountsTaskTaskAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024LoadAccountsTaskTaskAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $V2024LoadAccountsTaskTaskAttributesAdditionalProperties = @{}

        # check if Json contains properties not defined in V2024LoadAccountsTaskTaskAttributes
        $AllProperties = ("appId", "optimizedAggregation")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $V2024LoadAccountsTaskTaskAttributesAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "appId"))) { #optional property not found
            $AppId = $null
        } else {
            $AppId = $JsonParameters.PSobject.Properties["appId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "optimizedAggregation"))) { #optional property not found
            $OptimizedAggregation = $null
        } else {
            $OptimizedAggregation = $JsonParameters.PSobject.Properties["optimizedAggregation"].value
        }

        $PSO = [PSCustomObject]@{
            "appId" = ${AppId}
            "optimizedAggregation" = ${OptimizedAggregation}
            "AdditionalProperties" = $V2024LoadAccountsTaskTaskAttributesAdditionalProperties
        }

        return $PSO
    }

}

