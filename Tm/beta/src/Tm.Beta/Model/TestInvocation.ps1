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

.PARAMETER TriggerId
Trigger ID
.PARAMETER VarInput
Mock input to use for test invocation.  This must adhere to the input schema defined in the trigger being invoked.  If this property is omitted, then the default trigger sample payload will be sent.
.PARAMETER ContentJson
JSON map of invocation metadata.
.PARAMETER SubscriptionIds
Only send the test event to the subscription IDs listed.  If omitted, the test event will be sent to all subscribers.
.OUTPUTS

TestInvocation<PSCustomObject>
#>

function Initialize-BetaTestInvocation {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TriggerId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ContentJson},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${SubscriptionIds}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaTestInvocation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$TriggerId) {
            throw "invalid value for 'TriggerId', 'TriggerId' cannot be null."
        }

        if (!$ContentJson) {
            throw "invalid value for 'ContentJson', 'ContentJson' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "triggerId" = ${TriggerId}
            "input" = ${VarInput}
            "contentJson" = ${ContentJson}
            "subscriptionIds" = ${SubscriptionIds}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TestInvocation<PSCustomObject>

.DESCRIPTION

Convert from JSON to TestInvocation<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TestInvocation<PSCustomObject>
#>
function ConvertFrom-BetaJsonToTestInvocation {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaTestInvocation' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaTestInvocation
        $AllProperties = ("triggerId", "input", "contentJson", "subscriptionIds")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'triggerId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "triggerId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'triggerId' missing."
        } else {
            $TriggerId = $JsonParameters.PSobject.Properties["triggerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentJson"))) {
            throw "Error! JSON cannot be serialized due to the required property 'contentJson' missing."
        } else {
            $ContentJson = $JsonParameters.PSobject.Properties["contentJson"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subscriptionIds"))) { #optional property not found
            $SubscriptionIds = $null
        } else {
            $SubscriptionIds = $JsonParameters.PSobject.Properties["subscriptionIds"].value
        }

        $PSO = [PSCustomObject]@{
            "triggerId" = ${TriggerId}
            "input" = ${VarInput}
            "contentJson" = ${ContentJson}
            "subscriptionIds" = ${SubscriptionIds}
        }

        return $PSO
    }

}

