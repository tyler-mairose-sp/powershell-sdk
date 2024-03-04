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

No description available.

.PARAMETER Type
The type of event
.PARAMETER Timestamp
The date-time when the event occurred
.PARAMETER Attributes
Additional attributes associated with the event
.OUTPUTS

WorkflowExecutionEvent<PSCustomObject>
#>

function Initialize-BetaWorkflowExecutionEvent {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("WorkflowExecutionScheduled", "WorkflowExecutionStarted", "WorkflowExecutionCompleted", "WorkflowExecutionFailed", "WorkflowTaskScheduled", "WorkflowTaskStarted", "WorkflowTaskCompleted", "WorkflowTaskFailed", "ActivityTaskScheduled", "ActivityTaskStarted", "ActivityTaskCompleted", "ActivityTaskFailed")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Timestamp},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaWorkflowExecutionEvent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "timestamp" = ${Timestamp}
            "attributes" = ${Attributes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowExecutionEvent<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowExecutionEvent<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowExecutionEvent<PSCustomObject>
#>
function ConvertFrom-BetaJsonToWorkflowExecutionEvent {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaWorkflowExecutionEvent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaWorkflowExecutionEvent
        $AllProperties = ("type", "timestamp", "attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timestamp"))) { #optional property not found
            $Timestamp = $null
        } else {
            $Timestamp = $JsonParameters.PSobject.Properties["timestamp"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "timestamp" = ${Timestamp}
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}

