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

Sed Batch Stats

.PARAMETER BatchComplete
batch complete
.PARAMETER BatchId
batch Id
.PARAMETER DiscoveredCount
discovered count
.PARAMETER DiscoveryComplete
discovery complete
.PARAMETER ProcessedCount
processed count
.OUTPUTS

SedBatchStats<PSCustomObject>
#>

function Initialize-V2024SedBatchStats {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${BatchComplete} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BatchId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${DiscoveredCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DiscoveryComplete} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${ProcessedCount}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024SedBatchStats' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "batchComplete" = ${BatchComplete}
            "batchId" = ${BatchId}
            "discoveredCount" = ${DiscoveredCount}
            "discoveryComplete" = ${DiscoveryComplete}
            "processedCount" = ${ProcessedCount}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SedBatchStats<PSCustomObject>

.DESCRIPTION

Convert from JSON to SedBatchStats<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SedBatchStats<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSedBatchStats {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024SedBatchStats' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024SedBatchStats
        $AllProperties = ("batchComplete", "batchId", "discoveredCount", "discoveryComplete", "processedCount")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "batchComplete"))) { #optional property not found
            $BatchComplete = $null
        } else {
            $BatchComplete = $JsonParameters.PSobject.Properties["batchComplete"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "batchId"))) { #optional property not found
            $BatchId = $null
        } else {
            $BatchId = $JsonParameters.PSobject.Properties["batchId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "discoveredCount"))) { #optional property not found
            $DiscoveredCount = $null
        } else {
            $DiscoveredCount = $JsonParameters.PSobject.Properties["discoveredCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "discoveryComplete"))) { #optional property not found
            $DiscoveryComplete = $null
        } else {
            $DiscoveryComplete = $JsonParameters.PSobject.Properties["discoveryComplete"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "processedCount"))) { #optional property not found
            $ProcessedCount = $null
        } else {
            $ProcessedCount = $JsonParameters.PSobject.Properties["processedCount"].value
        }

        $PSO = [PSCustomObject]@{
            "batchComplete" = ${BatchComplete}
            "batchId" = ${BatchId}
            "discoveredCount" = ${DiscoveredCount}
            "discoveryComplete" = ${DiscoveryComplete}
            "processedCount" = ${ProcessedCount}
        }

        return $PSO
    }

}

