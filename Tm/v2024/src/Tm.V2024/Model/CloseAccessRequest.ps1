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

Request body payload for close access requests endpoint.

.PARAMETER AccessRequestIds
Access Request IDs for the requests to be closed. Accepts 1-500 Identity Request IDs per request.
.PARAMETER Message
Reason for closing the access request. Displayed under Warnings in IdentityNow.
.PARAMETER ExecutionStatus
The request's provisioning status. Displayed as Stage in IdentityNow.
.PARAMETER CompletionStatus
The request's overall status. Displayed as Status in IdentityNow.
.OUTPUTS

CloseAccessRequest<PSCustomObject>
#>

function Initialize-V2024CloseAccessRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${AccessRequestIds},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message} = "The IdentityNow Administrator manually closed this request.",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Terminated", "Completed")]
        [String]
        ${ExecutionStatus} = "Terminated",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Success", "Incomplete", "Failure")]
        [String]
        ${CompletionStatus} = "Failure"
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024CloseAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$AccessRequestIds) {
            throw "invalid value for 'AccessRequestIds', 'AccessRequestIds' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "accessRequestIds" = ${AccessRequestIds}
            "message" = ${Message}
            "executionStatus" = ${ExecutionStatus}
            "completionStatus" = ${CompletionStatus}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CloseAccessRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to CloseAccessRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CloseAccessRequest<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCloseAccessRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024CloseAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CloseAccessRequest
        $AllProperties = ("accessRequestIds", "message", "executionStatus", "completionStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'accessRequestIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessRequestIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'accessRequestIds' missing."
        } else {
            $AccessRequestIds = $JsonParameters.PSobject.Properties["accessRequestIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "executionStatus"))) { #optional property not found
            $ExecutionStatus = $null
        } else {
            $ExecutionStatus = $JsonParameters.PSobject.Properties["executionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completionStatus"))) { #optional property not found
            $CompletionStatus = $null
        } else {
            $CompletionStatus = $JsonParameters.PSobject.Properties["completionStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "accessRequestIds" = ${AccessRequestIds}
            "message" = ${Message}
            "executionStatus" = ${ExecutionStatus}
            "completionStatus" = ${CompletionStatus}
        }

        return $PSO
    }

}

