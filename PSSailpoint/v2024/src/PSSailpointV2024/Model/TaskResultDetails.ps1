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

Details about job or task type, state and lifecycle.

.PARAMETER Type
Type of the job or task underlying in the report processing. It could be a quartz task, QPOC or MENTOS jobs or a refresh/sync task.
.PARAMETER Id
Unique task definition identifier.
.PARAMETER ReportType
Use this property to define what report should be processed in the RDE service.
.PARAMETER Description
Description of the report purpose and/or contents.
.PARAMETER ParentName
Name of the parent task/report if exists.
.PARAMETER Launcher
Name of the report processing initiator.
.PARAMETER Created
Report creation date
.PARAMETER Launched
Report start date
.PARAMETER Completed
Report completion date
.PARAMETER CompletionStatus
Report completion status.
.PARAMETER Messages
List of the messages dedicated to the report.  From task definition perspective here usually should be warnings or errors.
.PARAMETER Returns
Task definition results, if necessary.
.PARAMETER Attributes
Extra attributes map(dictionary) needed for the report.
.PARAMETER Progress
Current report state.
.OUTPUTS

TaskResultDetails<PSCustomObject>
#>

function Initialize-V2024TaskResultDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("QUARTZ", "QPOC", "MENTOS", "QUEUED_TASK")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCOUNTS", "IDENTITIES_DETAILS", "IDENTITIES", "IDENTITY_PROFILE_IDENTITY_ERROR", "ORPHAN_IDENTITIES", "SEARCH_EXPORT", "UNCORRELATED_ACCOUNTS")]
        [PSCustomObject]
        ${ReportType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ParentName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Launcher},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Launched},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "WARNING", "ERROR", "TERMINATED", "TEMP_ERROR")]
        [String]
        ${CompletionStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Messages},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Returns},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Progress}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024TaskResultDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "reportType" = ${ReportType}
            "description" = ${Description}
            "parentName" = ${ParentName}
            "launcher" = ${Launcher}
            "created" = ${Created}
            "launched" = ${Launched}
            "completed" = ${Completed}
            "completionStatus" = ${CompletionStatus}
            "messages" = ${Messages}
            "returns" = ${Returns}
            "attributes" = ${Attributes}
            "progress" = ${Progress}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TaskResultDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to TaskResultDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TaskResultDetails<PSCustomObject>
#>
function ConvertFrom-V2024JsonToTaskResultDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024TaskResultDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024TaskResultDetails
        $AllProperties = ("type", "id", "reportType", "description", "parentName", "launcher", "created", "launched", "completed", "completionStatus", "messages", "returns", "attributes", "progress")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reportType"))) { #optional property not found
            $ReportType = $null
        } else {
            $ReportType = $JsonParameters.PSobject.Properties["reportType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "parentName"))) { #optional property not found
            $ParentName = $null
        } else {
            $ParentName = $JsonParameters.PSobject.Properties["parentName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launcher"))) { #optional property not found
            $Launcher = $null
        } else {
            $Launcher = $JsonParameters.PSobject.Properties["launcher"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "launched"))) { #optional property not found
            $Launched = $null
        } else {
            $Launched = $JsonParameters.PSobject.Properties["launched"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completionStatus"))) { #optional property not found
            $CompletionStatus = $null
        } else {
            $CompletionStatus = $JsonParameters.PSobject.Properties["completionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messages"))) { #optional property not found
            $Messages = $null
        } else {
            $Messages = $JsonParameters.PSobject.Properties["messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "returns"))) { #optional property not found
            $Returns = $null
        } else {
            $Returns = $JsonParameters.PSobject.Properties["returns"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "progress"))) { #optional property not found
            $Progress = $null
        } else {
            $Progress = $JsonParameters.PSobject.Properties["progress"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "id" = ${Id}
            "reportType" = ${ReportType}
            "description" = ${Description}
            "parentName" = ${ParentName}
            "launcher" = ${Launcher}
            "created" = ${Created}
            "launched" = ${Launched}
            "completed" = ${Completed}
            "completionStatus" = ${CompletionStatus}
            "messages" = ${Messages}
            "returns" = ${Returns}
            "attributes" = ${Attributes}
            "progress" = ${Progress}
        }

        return $PSO
    }

}

