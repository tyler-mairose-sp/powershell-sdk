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

A JSONPatch document as defined by [RFC 6902 - JSON Patch](https://tools.ietf.org/html/rfc6902).  Only `replace` operations are accepted by this endpoint.

.PARAMETER Operations
Operations to be applied
.OUTPUTS

PatchServiceDeskIntegrationRequest<PSCustomObject>
#>

function Initialize-BetaPatchServiceDeskIntegrationRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Operations}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaPatchServiceDeskIntegrationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operations" = ${Operations}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PatchServiceDeskIntegrationRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to PatchServiceDeskIntegrationRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PatchServiceDeskIntegrationRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToPatchServiceDeskIntegrationRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaPatchServiceDeskIntegrationRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaPatchServiceDeskIntegrationRequest
        $AllProperties = ("operations")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operations"))) { #optional property not found
            $Operations = $null
        } else {
            $Operations = $JsonParameters.PSobject.Properties["operations"].value
        }

        $PSO = [PSCustomObject]@{
            "operations" = ${Operations}
        }

        return $PSO
    }

}

