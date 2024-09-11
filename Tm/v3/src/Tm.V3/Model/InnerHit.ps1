#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Inner Hit query object that will cause the specified nested type to be returned as the result matching the supplied query.

.PARAMETER Query
The search query using the Elasticsearch [Query String Query](https://www.elastic.co/guide/en/elasticsearch/reference/5.2/query-dsl-query-string-query.html#query-string) syntax from the Query DSL extended by SailPoint to support Nested queries.
.PARAMETER Type
The nested type to use in the inner hits query.  The nested type [Nested Type](https://www.elastic.co/guide/en/elasticsearch/reference/current/nested.html) refers to a document ""nested"" within another document. For example, an identity can have nested documents for access, accounts, and apps.
.OUTPUTS

InnerHit<PSCustomObject>
#>

function Initialize-InnerHit {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Query},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => InnerHit' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Query) {
            throw "invalid value for 'Query', 'Query' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InnerHit<PSCustomObject>

.DESCRIPTION

Convert from JSON to InnerHit<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InnerHit<PSCustomObject>
#>
function ConvertFrom-JsonToInnerHit {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => InnerHit' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InnerHit
        $AllProperties = ("query", "type")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "query" = ${Query}
            "type" = ${Type}
        }

        return $PSO
    }

}

