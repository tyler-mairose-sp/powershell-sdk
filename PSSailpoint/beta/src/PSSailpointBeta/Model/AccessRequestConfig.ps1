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

.PARAMETER ApprovalsMustBeExternal
If this is true, approvals must be processed by an external system. Also, if this is true, it blocks Request Center access requests and returns an error for any user who isn't an org admin.
.PARAMETER AutoApprovalEnabled
If this is true and the requester and reviewer are the same, the request is automatically approved.
.PARAMETER RequestOnBehalfOfConfig
No description available.
.PARAMETER ApprovalReminderAndEscalationConfig
No description available.
.PARAMETER EntitlementRequestConfig
No description available.
.OUTPUTS

AccessRequestConfig<PSCustomObject>
#>

function Initialize-BetaAccessRequestConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ApprovalsMustBeExternal} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AutoApprovalEnabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequestOnBehalfOfConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApprovalReminderAndEscalationConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EntitlementRequestConfig}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaAccessRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "approvalsMustBeExternal" = ${ApprovalsMustBeExternal}
            "autoApprovalEnabled" = ${AutoApprovalEnabled}
            "requestOnBehalfOfConfig" = ${RequestOnBehalfOfConfig}
            "approvalReminderAndEscalationConfig" = ${ApprovalReminderAndEscalationConfig}
            "entitlementRequestConfig" = ${EntitlementRequestConfig}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToAccessRequestConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaAccessRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaAccessRequestConfig
        $AllProperties = ("approvalsMustBeExternal", "autoApprovalEnabled", "requestOnBehalfOfConfig", "approvalReminderAndEscalationConfig", "entitlementRequestConfig")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalsMustBeExternal"))) { #optional property not found
            $ApprovalsMustBeExternal = $null
        } else {
            $ApprovalsMustBeExternal = $JsonParameters.PSobject.Properties["approvalsMustBeExternal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "autoApprovalEnabled"))) { #optional property not found
            $AutoApprovalEnabled = $null
        } else {
            $AutoApprovalEnabled = $JsonParameters.PSobject.Properties["autoApprovalEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestOnBehalfOfConfig"))) { #optional property not found
            $RequestOnBehalfOfConfig = $null
        } else {
            $RequestOnBehalfOfConfig = $JsonParameters.PSobject.Properties["requestOnBehalfOfConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalReminderAndEscalationConfig"))) { #optional property not found
            $ApprovalReminderAndEscalationConfig = $null
        } else {
            $ApprovalReminderAndEscalationConfig = $JsonParameters.PSobject.Properties["approvalReminderAndEscalationConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementRequestConfig"))) { #optional property not found
            $EntitlementRequestConfig = $null
        } else {
            $EntitlementRequestConfig = $JsonParameters.PSobject.Properties["entitlementRequestConfig"].value
        }

        $PSO = [PSCustomObject]@{
            "approvalsMustBeExternal" = ${ApprovalsMustBeExternal}
            "autoApprovalEnabled" = ${AutoApprovalEnabled}
            "requestOnBehalfOfConfig" = ${RequestOnBehalfOfConfig}
            "approvalReminderAndEscalationConfig" = ${ApprovalReminderAndEscalationConfig}
            "entitlementRequestConfig" = ${EntitlementRequestConfig}
        }

        return $PSO
    }

}

