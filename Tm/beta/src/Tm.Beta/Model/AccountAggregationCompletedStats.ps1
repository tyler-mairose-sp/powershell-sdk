#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Overall statistics about the account aggregation.

.PARAMETER Scanned
The number of accounts which were scanned / iterated over.
.PARAMETER Unchanged
The number of accounts which existed before, but had no changes.
.PARAMETER Changed
The number of accounts which existed before, but had changes.
.PARAMETER Added
The number of accounts which are new - have not existed before.
.PARAMETER Removed
The number accounts which existed before, but no longer exist (thus getting removed).
.OUTPUTS

AccountAggregationCompletedStats<PSCustomObject>
#>

function Initialize-BetaAccountAggregationCompletedStats {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Scanned},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Unchanged},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Changed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Added},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${Removed}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaAccountAggregationCompletedStats' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Scanned) {
            throw "invalid value for 'Scanned', 'Scanned' cannot be null."
        }

        if ($Scanned -gt 2147483647) {
          throw "invalid value for 'Scanned', must be smaller than or equal to 2147483647."
        }

        if ($Scanned -lt 0) {
          throw "invalid value for 'Scanned', must be greater than or equal to 0."
        }

        if (!$Unchanged) {
            throw "invalid value for 'Unchanged', 'Unchanged' cannot be null."
        }

        if ($Unchanged -gt 2147483647) {
          throw "invalid value for 'Unchanged', must be smaller than or equal to 2147483647."
        }

        if ($Unchanged -lt 0) {
          throw "invalid value for 'Unchanged', must be greater than or equal to 0."
        }

        if (!$Changed) {
            throw "invalid value for 'Changed', 'Changed' cannot be null."
        }

        if ($Changed -gt 2147483647) {
          throw "invalid value for 'Changed', must be smaller than or equal to 2147483647."
        }

        if ($Changed -lt 0) {
          throw "invalid value for 'Changed', must be greater than or equal to 0."
        }

        if (!$Added) {
            throw "invalid value for 'Added', 'Added' cannot be null."
        }

        if ($Added -gt 2147483647) {
          throw "invalid value for 'Added', must be smaller than or equal to 2147483647."
        }

        if ($Added -lt 0) {
          throw "invalid value for 'Added', must be greater than or equal to 0."
        }

        if (!$Removed) {
            throw "invalid value for 'Removed', 'Removed' cannot be null."
        }

        if ($Removed -gt 2147483647) {
          throw "invalid value for 'Removed', must be smaller than or equal to 2147483647."
        }

        if ($Removed -lt 0) {
          throw "invalid value for 'Removed', must be greater than or equal to 0."
        }


        $PSO = [PSCustomObject]@{
            "scanned" = ${Scanned}
            "unchanged" = ${Unchanged}
            "changed" = ${Changed}
            "added" = ${Added}
            "removed" = ${Removed}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountAggregationCompletedStats<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountAggregationCompletedStats<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountAggregationCompletedStats<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccountAggregationCompletedStats {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaAccountAggregationCompletedStats' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccountAggregationCompletedStats
        $AllProperties = ("scanned", "unchanged", "changed", "added", "removed")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'scanned' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "scanned"))) {
            throw "Error! JSON cannot be serialized due to the required property 'scanned' missing."
        } else {
            $Scanned = $JsonParameters.PSobject.Properties["scanned"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unchanged"))) {
            throw "Error! JSON cannot be serialized due to the required property 'unchanged' missing."
        } else {
            $Unchanged = $JsonParameters.PSobject.Properties["unchanged"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "changed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'changed' missing."
        } else {
            $Changed = $JsonParameters.PSobject.Properties["changed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "added"))) {
            throw "Error! JSON cannot be serialized due to the required property 'added' missing."
        } else {
            $Added = $JsonParameters.PSobject.Properties["added"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'removed' missing."
        } else {
            $Removed = $JsonParameters.PSobject.Properties["removed"].value
        }

        $PSO = [PSCustomObject]@{
            "scanned" = ${Scanned}
            "unchanged" = ${Unchanged}
            "changed" = ${Changed}
            "added" = ${Added}
            "removed" = ${Removed}
        }

        return $PSO
    }

}

