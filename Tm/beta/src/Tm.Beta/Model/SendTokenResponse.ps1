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
The token request ID
.PARAMETER Status
Status of sending token
.PARAMETER ErrorMessage
Error messages from token send request
.OUTPUTS

SendTokenResponse<PSCustomObject>
#>

function Initialize-BetaSendTokenResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "FAILED")]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorMessage}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaSendTokenResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "requestId" = ${RequestId}
            "status" = ${Status}
            "errorMessage" = ${ErrorMessage}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SendTokenResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to SendTokenResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SendTokenResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSendTokenResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaSendTokenResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSendTokenResponse
        $AllProperties = ("requestId", "status", "errorMessage")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestId"))) { #optional property not found
            $RequestId = $null
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["requestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errorMessage"))) { #optional property not found
            $ErrorMessage = $null
        } else {
            $ErrorMessage = $JsonParameters.PSobject.Properties["errorMessage"].value
        }

        $PSO = [PSCustomObject]@{
            "requestId" = ${RequestId}
            "status" = ${Status}
            "errorMessage" = ${ErrorMessage}
        }

        return $PSO
    }

}

