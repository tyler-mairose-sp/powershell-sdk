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
Id of the account activity
.PARAMETER Name
The name of the activity
.PARAMETER Created
When the activity was first created
.PARAMETER Modified
When the activity was last modified
.PARAMETER Completed
When the activity was completed
.PARAMETER CompletionStatus
No description available.
.PARAMETER Type
The type of action the activity performed.  Please see the following list of types.  This list may grow over time.  - CloudAutomated - IdentityAttributeUpdate - appRequest - LifecycleStateChange - AccountStateUpdate - AccountAttributeUpdate - CloudPasswordRequest - Attribute Synchronization Refresh - Certification - Identity Refresh - Lifecycle Change Refresh   [Learn more here](https://documentation.sailpoint.com/saas/help/search/searchable-fields.html#searching-account-activity-data). 
.PARAMETER RequesterIdentitySummary
No description available.
.PARAMETER TargetIdentitySummary
No description available.
.PARAMETER Errors
A list of error messages, if any, that were encountered.
.PARAMETER Warnings
A list of warning messages, if any, that were encountered.
.PARAMETER Items
Individual actions performed as part of this account activity
.PARAMETER ExecutionStatus
No description available.
.PARAMETER ClientMetadata
Arbitrary key-value pairs, if any were included in the corresponding access request
.OUTPUTS

AccountActivity<PSCustomObject>
#>

function Initialize-V2024AccountActivity {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESS", "FAILURE", "INCOMPLETE", "PENDING", "")]
        [PSCustomObject]
        ${CompletionStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequesterIdentitySummary},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TargetIdentitySummary},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Warnings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EXECUTING", "VERIFYING", "TERMINATED", "COMPLETED")]
        [PSCustomObject]
        ${ExecutionStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ClientMetadata}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024AccountActivity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "completed" = ${Completed}
            "completionStatus" = ${CompletionStatus}
            "type" = ${Type}
            "requesterIdentitySummary" = ${RequesterIdentitySummary}
            "targetIdentitySummary" = ${TargetIdentitySummary}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
            "items" = ${Items}
            "executionStatus" = ${ExecutionStatus}
            "clientMetadata" = ${ClientMetadata}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountActivity<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountActivity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountActivity<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccountActivity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024AccountActivity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccountActivity
        $AllProperties = ("id", "name", "created", "modified", "completed", "completionStatus", "type", "requesterIdentitySummary", "targetIdentitySummary", "errors", "warnings", "items", "executionStatus", "clientMetadata")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterIdentitySummary"))) { #optional property not found
            $RequesterIdentitySummary = $null
        } else {
            $RequesterIdentitySummary = $JsonParameters.PSobject.Properties["requesterIdentitySummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "targetIdentitySummary"))) { #optional property not found
            $TargetIdentitySummary = $null
        } else {
            $TargetIdentitySummary = $JsonParameters.PSobject.Properties["targetIdentitySummary"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "warnings"))) { #optional property not found
            $Warnings = $null
        } else {
            $Warnings = $JsonParameters.PSobject.Properties["warnings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "executionStatus"))) { #optional property not found
            $ExecutionStatus = $null
        } else {
            $ExecutionStatus = $JsonParameters.PSobject.Properties["executionStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientMetadata"))) { #optional property not found
            $ClientMetadata = $null
        } else {
            $ClientMetadata = $JsonParameters.PSobject.Properties["clientMetadata"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "completed" = ${Completed}
            "completionStatus" = ${CompletionStatus}
            "type" = ${Type}
            "requesterIdentitySummary" = ${RequesterIdentitySummary}
            "targetIdentitySummary" = ${TargetIdentitySummary}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
            "items" = ${Items}
            "executionStatus" = ${ExecutionStatus}
            "clientMetadata" = ${ClientMetadata}
        }

        return $PSO
    }

}

