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

.PARAMETER Indices
The names of the Elasticsearch indices in which to search. If none are provided, then all indices will be searched.
.PARAMETER QueryType
No description available.
.PARAMETER QueryVersion
No description available.
.PARAMETER Query
No description available.
.PARAMETER QueryDsl
The search query using the Elasticsearch [Query DSL](https://www.elastic.co/guide/en/elasticsearch/reference/7.10/query-dsl.html) syntax.
.PARAMETER TextQuery
No description available.
.PARAMETER TypeAheadQuery
No description available.
.PARAMETER IncludeNested
Indicates whether nested objects from returned search results should be included.
.PARAMETER QueryResultFilter
No description available.
.PARAMETER AggregationType
No description available.
.PARAMETER AggregationsVersion
No description available.
.PARAMETER AggregationsDsl
The aggregation search query using Elasticsearch [Aggregations](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/search-aggregations.html) syntax.
.PARAMETER Aggregations
No description available.
.PARAMETER Sort
The fields to be used to sort the search results. Use + or - to specify the sort direction.
.PARAMETER SearchAfter
Used to begin the search window at the values specified. This parameter consists of the last values of the sorted fields in the current record set. This is used to expand the Elasticsearch limit of 10K records by shifting the 10K window to begin at this value. It is recommended that you always include the ID of the object in addition to any other fields on this parameter in order to ensure you don't get duplicate results while paging. For example, when searching for identities, if you are sorting by displayName you will also want to include ID, for example [""displayName"", ""id""].  If the last identity ID in the search result is 2c91808375d8e80a0175e1f88a575221 and the last displayName is ""John Doe"", then using that displayName and ID will start a new search after this identity. The searchAfter value will look like [""John Doe"",""2c91808375d8e80a0175e1f88a575221""]
.PARAMETER Filters
The filters to be applied for each filtered field name.
.OUTPUTS

Search<PSCustomObject>
#>

function Initialize-V2024Search {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Indices},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DSL", "SAILPOINT", "TEXT", "TYPEAHEAD")]
        [PSCustomObject]
        ${QueryType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${QueryVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Query},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${QueryDsl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TextQuery},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TypeAheadQuery},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IncludeNested} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${QueryResultFilter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("DSL", "SAILPOINT")]
        [PSCustomObject]
        ${AggregationType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[String]]
        ${AggregationsVersion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AggregationsDsl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Aggregations},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Sort},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SearchAfter},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Filters}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024Search' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "indices" = ${Indices}
            "queryType" = ${QueryType}
            "queryVersion" = ${QueryVersion}
            "query" = ${Query}
            "queryDsl" = ${QueryDsl}
            "textQuery" = ${TextQuery}
            "typeAheadQuery" = ${TypeAheadQuery}
            "includeNested" = ${IncludeNested}
            "queryResultFilter" = ${QueryResultFilter}
            "aggregationType" = ${AggregationType}
            "aggregationsVersion" = ${AggregationsVersion}
            "aggregationsDsl" = ${AggregationsDsl}
            "aggregations" = ${Aggregations}
            "sort" = ${Sort}
            "searchAfter" = ${SearchAfter}
            "filters" = ${Filters}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Search<PSCustomObject>

.DESCRIPTION

Convert from JSON to Search<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Search<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSearch {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024Search' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Search
        $AllProperties = ("indices", "queryType", "queryVersion", "query", "queryDsl", "textQuery", "typeAheadQuery", "includeNested", "queryResultFilter", "aggregationType", "aggregationsVersion", "aggregationsDsl", "aggregations", "sort", "searchAfter", "filters")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "indices"))) { #optional property not found
            $Indices = $null
        } else {
            $Indices = $JsonParameters.PSobject.Properties["indices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queryType"))) { #optional property not found
            $QueryType = $null
        } else {
            $QueryType = $JsonParameters.PSobject.Properties["queryType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queryVersion"))) { #optional property not found
            $QueryVersion = $null
        } else {
            $QueryVersion = $JsonParameters.PSobject.Properties["queryVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) { #optional property not found
            $Query = $null
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queryDsl"))) { #optional property not found
            $QueryDsl = $null
        } else {
            $QueryDsl = $JsonParameters.PSobject.Properties["queryDsl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "textQuery"))) { #optional property not found
            $TextQuery = $null
        } else {
            $TextQuery = $JsonParameters.PSobject.Properties["textQuery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "typeAheadQuery"))) { #optional property not found
            $TypeAheadQuery = $null
        } else {
            $TypeAheadQuery = $JsonParameters.PSobject.Properties["typeAheadQuery"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "includeNested"))) { #optional property not found
            $IncludeNested = $null
        } else {
            $IncludeNested = $JsonParameters.PSobject.Properties["includeNested"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "queryResultFilter"))) { #optional property not found
            $QueryResultFilter = $null
        } else {
            $QueryResultFilter = $JsonParameters.PSobject.Properties["queryResultFilter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregationType"))) { #optional property not found
            $AggregationType = $null
        } else {
            $AggregationType = $JsonParameters.PSobject.Properties["aggregationType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregationsVersion"))) { #optional property not found
            $AggregationsVersion = $null
        } else {
            $AggregationsVersion = $JsonParameters.PSobject.Properties["aggregationsVersion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregationsDsl"))) { #optional property not found
            $AggregationsDsl = $null
        } else {
            $AggregationsDsl = $JsonParameters.PSobject.Properties["aggregationsDsl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "aggregations"))) { #optional property not found
            $Aggregations = $null
        } else {
            $Aggregations = $JsonParameters.PSobject.Properties["aggregations"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sort"))) { #optional property not found
            $Sort = $null
        } else {
            $Sort = $JsonParameters.PSobject.Properties["sort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "searchAfter"))) { #optional property not found
            $SearchAfter = $null
        } else {
            $SearchAfter = $JsonParameters.PSobject.Properties["searchAfter"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filters"))) { #optional property not found
            $Filters = $null
        } else {
            $Filters = $JsonParameters.PSobject.Properties["filters"].value
        }

        $PSO = [PSCustomObject]@{
            "indices" = ${Indices}
            "queryType" = ${QueryType}
            "queryVersion" = ${QueryVersion}
            "query" = ${Query}
            "queryDsl" = ${QueryDsl}
            "textQuery" = ${TextQuery}
            "typeAheadQuery" = ${TypeAheadQuery}
            "includeNested" = ${IncludeNested}
            "queryResultFilter" = ${QueryResultFilter}
            "aggregationType" = ${AggregationType}
            "aggregationsVersion" = ${AggregationsVersion}
            "aggregationsDsl" = ${AggregationsDsl}
            "aggregations" = ${Aggregations}
            "sort" = ${Sort}
            "searchAfter" = ${SearchAfter}
            "filters" = ${Filters}
        }

        return $PSO
    }

}

