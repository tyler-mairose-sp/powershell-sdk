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

Configuration of maximum number days and interval for checking Service Desk integration queue status

.PARAMETER ProvisioningStatusCheckIntervalMinutes
interval in minutes between status checks
.PARAMETER ProvisioningMaxStatusCheckDays
maximum number of days to check
.OUTPUTS

QueuedCheckConfigDetails<PSCustomObject>
#>

function Initialize-BetaQueuedCheckConfigDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProvisioningStatusCheckIntervalMinutes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProvisioningMaxStatusCheckDays}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaQueuedCheckConfigDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$ProvisioningStatusCheckIntervalMinutes) {
            throw "invalid value for 'ProvisioningStatusCheckIntervalMinutes', 'ProvisioningStatusCheckIntervalMinutes' cannot be null."
        }

        if (!$ProvisioningMaxStatusCheckDays) {
            throw "invalid value for 'ProvisioningMaxStatusCheckDays', 'ProvisioningMaxStatusCheckDays' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "provisioningStatusCheckIntervalMinutes" = ${ProvisioningStatusCheckIntervalMinutes}
            "provisioningMaxStatusCheckDays" = ${ProvisioningMaxStatusCheckDays}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to QueuedCheckConfigDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to QueuedCheckConfigDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

QueuedCheckConfigDetails<PSCustomObject>
#>
function ConvertFrom-BetaJsonToQueuedCheckConfigDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaQueuedCheckConfigDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaQueuedCheckConfigDetails
        $AllProperties = ("provisioningStatusCheckIntervalMinutes", "provisioningMaxStatusCheckDays")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'provisioningStatusCheckIntervalMinutes' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningStatusCheckIntervalMinutes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'provisioningStatusCheckIntervalMinutes' missing."
        } else {
            $ProvisioningStatusCheckIntervalMinutes = $JsonParameters.PSobject.Properties["provisioningStatusCheckIntervalMinutes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningMaxStatusCheckDays"))) {
            throw "Error! JSON cannot be serialized due to the required property 'provisioningMaxStatusCheckDays' missing."
        } else {
            $ProvisioningMaxStatusCheckDays = $JsonParameters.PSobject.Properties["provisioningMaxStatusCheckDays"].value
        }

        $PSO = [PSCustomObject]@{
            "provisioningStatusCheckIntervalMinutes" = ${ProvisioningStatusCheckIntervalMinutes}
            "provisioningMaxStatusCheckDays" = ${ProvisioningMaxStatusCheckDays}
        }

        return $PSO
    }

}

