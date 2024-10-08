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

Arguments for Search Export report (SEARCH_EXPORT)

.PARAMETER Indices
The names of the Elasticsearch indices in which to search. If none are provided, then all indices will be searched.
.PARAMETER Filters
The filters to be applied for each filtered field name.
.PARAMETER Query
No description available.
.PARAMETER IncludeNested
Indicates whether nested objects from returned search results should be included.
.PARAMETER Sort
The fields to be used to sort the search results. Use + or - to specify the sort direction.
.OUTPUTS

SearchExportReportArguments<PSCustomObject>
#>

function Initialize-V2024SearchExportReportArguments {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Indices},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Filters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Query},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IncludeNested} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Sort}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024SearchExportReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Query) {
            throw "invalid value for 'Query', 'Query' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "indices" = ${Indices}
            "filters" = ${Filters}
            "query" = ${Query}
            "includeNested" = ${IncludeNested}
            "sort" = ${Sort}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SearchExportReportArguments<PSCustomObject>

.DESCRIPTION

Convert from JSON to SearchExportReportArguments<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SearchExportReportArguments<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSearchExportReportArguments {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024SearchExportReportArguments' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024SearchExportReportArguments
        $AllProperties = ("indices", "filters", "query", "includeNested", "sort")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'query' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) {
            throw "Error! JSON cannot be serialized due to the required property 'query' missing."
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "indices"))) { #optional property not found
            $Indices = $null
        } else {
            $Indices = $JsonParameters.PSobject.Properties["indices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filters"))) { #optional property not found
            $Filters = $null
        } else {
            $Filters = $JsonParameters.PSobject.Properties["filters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeNested"))) { #optional property not found
            $IncludeNested = $null
        } else {
            $IncludeNested = $JsonParameters.PSobject.Properties["includeNested"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sort"))) { #optional property not found
            $Sort = $null
        } else {
            $Sort = $JsonParameters.PSobject.Properties["sort"].value
        }

        $PSO = [PSCustomObject]@{
            "indices" = ${Indices}
            "filters" = ${Filters}
            "query" = ${Query}
            "includeNested" = ${IncludeNested}
            "sort" = ${Sort}
        }

        return $PSO
    }

}

