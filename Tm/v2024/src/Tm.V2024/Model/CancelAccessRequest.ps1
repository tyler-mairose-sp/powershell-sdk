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

Request body payload for cancel access request endpoint.

.PARAMETER AccountActivityId
This refers to the identityRequestId. To successfully cancel an access request, you must provide the identityRequestId.
.PARAMETER Comment
Reason for cancelling the pending access request.
.OUTPUTS

CancelAccessRequest<PSCustomObject>
#>

function Initialize-V2024CancelAccessRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountActivityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024CancelAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccountActivityId) {
            throw "invalid value for 'AccountActivityId', 'AccountActivityId' cannot be null."
        }

        if (!$Comment) {
            throw "invalid value for 'Comment', 'Comment' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "accountActivityId" = ${AccountActivityId}
            "comment" = ${Comment}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CancelAccessRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to CancelAccessRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CancelAccessRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCancelAccessRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024CancelAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CancelAccessRequest
        $AllProperties = ("accountActivityId", "comment")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'accountActivityId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountActivityId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accountActivityId' missing."
        } else {
            $AccountActivityId = $JsonParameters.PSobject.Properties["accountActivityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) {
            throw "Error! JSON cannot be serialized due to the required property 'comment' missing."
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        $PSO = [PSCustomObject]@{
            "accountActivityId" = ${AccountActivityId}
            "comment" = ${Comment}
        }

        return $PSO
    }

}

