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

.PARAMETER Icon
url to file with icon
.OUTPUTS

SetIcon200Response<PSCustomObject>
#>

function Initialize-BetaSetIcon200Response {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Icon}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaSetIcon200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "icon" = ${Icon}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SetIcon200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to SetIcon200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SetIcon200Response<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSetIcon200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaSetIcon200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSetIcon200Response
        $AllProperties = ("icon")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "icon"))) { #optional property not found
            $Icon = $null
        } else {
            $Icon = $JsonParameters.PSobject.Properties["icon"].value
        }

        $PSO = [PSCustomObject]@{
            "icon" = ${Icon}
        }

        return $PSO
    }

}

