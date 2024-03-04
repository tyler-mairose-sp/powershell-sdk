#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Name
The name of the saved search. 
.PARAMETER Description
The description of the saved search. 
.PARAMETER Created
A date-time in ISO-8601 format
.PARAMETER Modified
A date-time in ISO-8601 format
.PARAMETER Indices
The names of the Elasticsearch indices in which to search. 
.PARAMETER Columns
The columns to be returned (specifies the order in which they will be presented) for each document type.  The currently supported document types are: _accessprofile_, _accountactivity_, _account_, _aggregation_, _entitlement_, _event_, _identity_, and _role_. 
.PARAMETER Query
The search query using Elasticsearch [Query String Query](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/query-dsl-query-string-query.html#query-string) syntax from the Query DSL. 
.PARAMETER Fields
The fields to be searched against in a multi-field query. 
.PARAMETER OrderBy
Sort by index. This takes precedence over the `sort` property. 
.PARAMETER Sort
The fields to be used to sort the search results. 
.PARAMETER Filters
No description available.
.PARAMETER Id
The saved search ID. 
.PARAMETER Owner
No description available.
.PARAMETER OwnerId
The ID of the identity that owns this saved search.
.PARAMETER Public
Whether this saved search is visible to anyone but the owner. This field will always be false as there is no way to set a saved search as public at this time.
.OUTPUTS

SavedSearch<PSCustomObject>
#>

function Initialize-SavedSearch {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Indices},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Columns},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Fields},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${OrderBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Sort},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Filters},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Public} = $false
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => SavedSearch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Indices) {
            throw "invalid value for 'Indices', 'Indices' cannot be null."
        }

        if (!$Query) {
            throw "invalid value for 'Query', 'Query' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "indices" = ${Indices}
            "columns" = ${Columns}
            "query" = ${Query}
            "fields" = ${Fields}
            "orderBy" = ${OrderBy}
            "sort" = ${Sort}
            "filters" = ${Filters}
            "id" = ${Id}
            "owner" = ${Owner}
            "ownerId" = ${OwnerId}
            "public" = ${Public}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SavedSearch<PSCustomObject>

.DESCRIPTION

Convert from JSON to SavedSearch<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SavedSearch<PSCustomObject>
#>
function ConvertFrom-JsonToSavedSearch {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => SavedSearch' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SavedSearch
        $AllProperties = ("name", "description", "created", "modified", "indices", "columns", "query", "fields", "orderBy", "sort", "filters", "id", "owner", "ownerId", "public")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'indices' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "indices"))) {
            throw "Error! JSON cannot be serialized due to the required property 'indices' missing."
        } else {
            $Indices = $JsonParameters.PSobject.Properties["indices"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "query"))) {
            throw "Error! JSON cannot be serialized due to the required property 'query' missing."
        } else {
            $Query = $JsonParameters.PSobject.Properties["query"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "columns"))) { #optional property not found
            $Columns = $null
        } else {
            $Columns = $JsonParameters.PSobject.Properties["columns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "orderBy"))) { #optional property not found
            $OrderBy = $null
        } else {
            $OrderBy = $JsonParameters.PSobject.Properties["orderBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sort"))) { #optional property not found
            $Sort = $null
        } else {
            $Sort = $JsonParameters.PSobject.Properties["sort"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filters"))) { #optional property not found
            $Filters = $null
        } else {
            $Filters = $JsonParameters.PSobject.Properties["filters"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerId"))) { #optional property not found
            $OwnerId = $null
        } else {
            $OwnerId = $JsonParameters.PSobject.Properties["ownerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "public"))) { #optional property not found
            $Public = $null
        } else {
            $Public = $JsonParameters.PSobject.Properties["public"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "indices" = ${Indices}
            "columns" = ${Columns}
            "query" = ${Query}
            "fields" = ${Fields}
            "orderBy" = ${OrderBy}
            "sort" = ${Sort}
            "filters" = ${Filters}
            "id" = ${Id}
            "owner" = ${Owner}
            "ownerId" = ${OwnerId}
            "public" = ${Public}
        }

        return $PSO
    }

}

