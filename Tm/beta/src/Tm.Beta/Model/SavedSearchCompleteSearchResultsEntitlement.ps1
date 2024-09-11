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

A table of entitlements that match the search criteria.

.PARAMETER Count
The number of rows in the table.
.PARAMETER Noun
The type of object represented in the table.
.PARAMETER Preview
A sample of the data in the table.
.OUTPUTS

SavedSearchCompleteSearchResultsEntitlement<PSCustomObject>
#>

function Initialize-BetaSavedSearchCompleteSearchResultsEntitlement {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Count},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Noun},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[][]]
        ${Preview}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaSavedSearchCompleteSearchResultsEntitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Count) {
            throw "invalid value for 'Count', 'Count' cannot be null."
        }

        if (!$Noun) {
            throw "invalid value for 'Noun', 'Noun' cannot be null."
        }

        if (!$Preview) {
            throw "invalid value for 'Preview', 'Preview' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "count" = ${Count}
            "noun" = ${Noun}
            "preview" = ${Preview}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SavedSearchCompleteSearchResultsEntitlement<PSCustomObject>

.DESCRIPTION

Convert from JSON to SavedSearchCompleteSearchResultsEntitlement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SavedSearchCompleteSearchResultsEntitlement<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSavedSearchCompleteSearchResultsEntitlement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaSavedSearchCompleteSearchResultsEntitlement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSavedSearchCompleteSearchResultsEntitlement
        $AllProperties = ("count", "noun", "preview")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'count' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) {
            throw "Error! JSON cannot be serialized due to the required property 'count' missing."
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "noun"))) {
            throw "Error! JSON cannot be serialized due to the required property 'noun' missing."
        } else {
            $Noun = $JsonParameters.PSobject.Properties["noun"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "preview"))) {
            throw "Error! JSON cannot be serialized due to the required property 'preview' missing."
        } else {
            $Preview = $JsonParameters.PSobject.Properties["preview"].value
        }

        $PSO = [PSCustomObject]@{
            "count" = ${Count}
            "noun" = ${Noun}
            "preview" = ${Preview}
        }

        return $PSO
    }

}

