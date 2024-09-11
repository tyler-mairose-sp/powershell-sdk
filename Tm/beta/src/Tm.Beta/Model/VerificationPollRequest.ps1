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

.PARAMETER RequestId
Verification request Id
.OUTPUTS

VerificationPollRequest<PSCustomObject>
#>

function Initialize-BetaVerificationPollRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaVerificationPollRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$RequestId) {
            throw "invalid value for 'RequestId', 'RequestId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "requestId" = ${RequestId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VerificationPollRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to VerificationPollRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VerificationPollRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToVerificationPollRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaVerificationPollRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaVerificationPollRequest
        $AllProperties = ("requestId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'requestId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestId' missing."
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["requestId"].value
        }

        $PSO = [PSCustomObject]@{
            "requestId" = ${RequestId}
        }

        return $PSO
    }

}

