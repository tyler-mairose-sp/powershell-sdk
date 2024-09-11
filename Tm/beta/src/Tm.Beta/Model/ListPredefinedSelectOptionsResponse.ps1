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

No description available.

.PARAMETER Results
Results holds a list of PreDefinedSelectOption items
.OUTPUTS

ListPredefinedSelectOptionsResponse<PSCustomObject>
#>

function Initialize-BetaListPredefinedSelectOptionsResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Results}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaListPredefinedSelectOptionsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "results" = ${Results}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListPredefinedSelectOptionsResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListPredefinedSelectOptionsResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListPredefinedSelectOptionsResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToListPredefinedSelectOptionsResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaListPredefinedSelectOptionsResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaListPredefinedSelectOptionsResponse
        $AllProperties = ("results")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "results"))) { #optional property not found
            $Results = $null
        } else {
            $Results = $JsonParameters.PSobject.Properties["results"].value
        }

        $PSO = [PSCustomObject]@{
            "results" = ${Results}
        }

        return $PSO
    }

}

