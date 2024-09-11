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

.PARAMETER WorkflowExecutionId
The workflow execution id
.PARAMETER Message
An error message if any errors occurred
.OUTPUTS

CreateExternalExecuteWorkflow200Response<PSCustomObject>
#>

function Initialize-V2024CreateExternalExecuteWorkflow200Response {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${WorkflowExecutionId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Message}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024CreateExternalExecuteWorkflow200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "workflowExecutionId" = ${WorkflowExecutionId}
            "message" = ${Message}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateExternalExecuteWorkflow200Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateExternalExecuteWorkflow200Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateExternalExecuteWorkflow200Response<PSCustomObject>
#>
function ConvertFrom-V2024JsonToCreateExternalExecuteWorkflow200Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024CreateExternalExecuteWorkflow200Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024CreateExternalExecuteWorkflow200Response
        $AllProperties = ("workflowExecutionId", "message")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "workflowExecutionId"))) { #optional property not found
            $WorkflowExecutionId = $null
        } else {
            $WorkflowExecutionId = $JsonParameters.PSobject.Properties["workflowExecutionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "message"))) { #optional property not found
            $Message = $null
        } else {
            $Message = $JsonParameters.PSobject.Properties["message"].value
        }

        $PSO = [PSCustomObject]@{
            "workflowExecutionId" = ${WorkflowExecutionId}
            "message" = ${Message}
        }

        return $PSO
    }

}

