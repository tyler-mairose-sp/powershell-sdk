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

.PARAMETER AccountActivityId
ID of the IdentityRequest object that is generated when the workflow launches. To follow the IdentityRequest, you can provide this ID with a [Get Account Activity request](https://developer.sailpoint.com/docs/api/v3/get-account-activity/). The response will contain relevant information about the IdentityRequest, such as its status.
.OUTPUTS

SetLifecycleState200Response<PSCustomObject>
#>

function Initialize-V2024SetLifecycleState200Response {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountActivityId}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024SetLifecycleState200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accountActivityId" = ${AccountActivityId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SetLifecycleState200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to SetLifecycleState200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SetLifecycleState200Response<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSetLifecycleState200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024SetLifecycleState200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024SetLifecycleState200Response
        $AllProperties = ("accountActivityId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountActivityId"))) { #optional property not found
            $AccountActivityId = $null
        } else {
            $AccountActivityId = $JsonParameters.PSobject.Properties["accountActivityId"].value
        }

        $PSO = [PSCustomObject]@{
            "accountActivityId" = ${AccountActivityId}
        }

        return $PSO
    }

}

