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

.PARAMETER Count
Count number of Results
.PARAMETER Results
Results holds a list of FormInstanceResponse items
.OUTPUTS

ListFormInstancesByTenantResponse<PSCustomObject>
#>

function Initialize-V2024ListFormInstancesByTenantResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Count},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Results}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ListFormInstancesByTenantResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "count" = ${Count}
            "results" = ${Results}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListFormInstancesByTenantResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListFormInstancesByTenantResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListFormInstancesByTenantResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToListFormInstancesByTenantResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ListFormInstancesByTenantResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ListFormInstancesByTenantResponse
        $AllProperties = ("count", "results")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "results"))) { #optional property not found
            $Results = $null
        } else {
            $Results = $JsonParameters.PSobject.Properties["results"].value
        }

        $PSO = [PSCustomObject]@{
            "count" = ${Count}
            "results" = ${Results}
        }

        return $PSO
    }

}

