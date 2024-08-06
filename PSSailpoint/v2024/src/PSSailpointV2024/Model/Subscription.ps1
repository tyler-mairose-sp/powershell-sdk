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

.PARAMETER Id
Subscription ID.
.PARAMETER Name
Subscription name.
.PARAMETER Description
Subscription description.
.PARAMETER TriggerId
ID of trigger subscribed to.
.PARAMETER TriggerName
Trigger name of trigger subscribed to.
.PARAMETER Type
No description available.
.PARAMETER ResponseDeadline
Deadline for completing REQUEST_RESPONSE trigger invocation, represented in ISO-8601 duration format.
.PARAMETER HttpConfig
No description available.
.PARAMETER EventBridgeConfig
No description available.
.PARAMETER Enabled
Whether subscription should receive real-time trigger invocations or not. Test trigger invocations are always enabled regardless of this option.
.PARAMETER VarFilter
JSONPath filter to conditionally invoke trigger when expression evaluates to true.
.OUTPUTS

Subscription<PSCustomObject>
#>

function Initialize-V2024Subscription {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TriggerId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TriggerName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("HTTP", "EVENTBRIDGE", "INLINE", "SCRIPT", "WORKFLOW")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ResponseDeadline} = "PT1H",
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${HttpConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${EventBridgeConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Enabled} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFilter}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024Subscription' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$TriggerId) {
            throw "invalid value for 'TriggerId', 'TriggerId' cannot be null."
        }

        if (!$TriggerName) {
            throw "invalid value for 'TriggerName', 'TriggerName' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Enabled) {
            throw "invalid value for 'Enabled', 'Enabled' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "triggerId" = ${TriggerId}
            "triggerName" = ${TriggerName}
            "type" = ${Type}
            "responseDeadline" = ${ResponseDeadline}
            "httpConfig" = ${HttpConfig}
            "eventBridgeConfig" = ${EventBridgeConfig}
            "enabled" = ${Enabled}
            "filter" = ${VarFilter}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Subscription<PSCustomObject>

.DESCRIPTION

Convert from JSON to Subscription<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Subscription<PSCustomObject>
#>
function ConvertFrom-V2024JsonToSubscription {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024Subscription' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Subscription
        $AllProperties = ("id", "name", "description", "triggerId", "triggerName", "type", "responseDeadline", "httpConfig", "eventBridgeConfig", "enabled", "filter")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "triggerId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'triggerId' missing."
        } else {
            $TriggerId = $JsonParameters.PSobject.Properties["triggerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "triggerName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'triggerName' missing."
        } else {
            $TriggerName = $JsonParameters.PSobject.Properties["triggerName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enabled' missing."
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "responseDeadline"))) { #optional property not found
            $ResponseDeadline = $null
        } else {
            $ResponseDeadline = $JsonParameters.PSobject.Properties["responseDeadline"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "httpConfig"))) { #optional property not found
            $HttpConfig = $null
        } else {
            $HttpConfig = $JsonParameters.PSobject.Properties["httpConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "eventBridgeConfig"))) { #optional property not found
            $EventBridgeConfig = $null
        } else {
            $EventBridgeConfig = $JsonParameters.PSobject.Properties["eventBridgeConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filter"))) { #optional property not found
            $VarFilter = $null
        } else {
            $VarFilter = $JsonParameters.PSobject.Properties["filter"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "triggerId" = ${TriggerId}
            "triggerName" = ${TriggerName}
            "type" = ${Type}
            "responseDeadline" = ${ResponseDeadline}
            "httpConfig" = ${HttpConfig}
            "eventBridgeConfig" = ${EventBridgeConfig}
            "enabled" = ${Enabled}
            "filter" = ${VarFilter}
        }

        return $PSO
    }

}

