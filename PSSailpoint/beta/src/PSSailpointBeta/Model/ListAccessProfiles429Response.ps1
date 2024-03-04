#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Message
A message describing the error
.OUTPUTS

ListAccessProfiles429Response<PSCustomObject>
#>

function Initialize-BetaListAccessProfiles429Response {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Message}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaListAccessProfiles429Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "message" = ${Message}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListAccessProfiles429Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListAccessProfiles429Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListAccessProfiles429Response<PSCustomObject>
#>
function ConvertFrom-BetaJsonToListAccessProfiles429Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaListAccessProfiles429Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaListAccessProfiles429Response
        $AllProperties = ("message")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "message" = ${Message}
        }

        return $PSO
    }

}

