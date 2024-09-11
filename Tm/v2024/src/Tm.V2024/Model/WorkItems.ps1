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
ID of the work item
.PARAMETER RequesterId
ID of the requester
.PARAMETER RequesterDisplayName
The displayname of the requester
.PARAMETER OwnerId
The ID of the owner
.PARAMETER OwnerName
The name of the owner
.PARAMETER Created
Time when the work item was created
.PARAMETER Modified
Time when the work item was last updated
.PARAMETER Description
The description of the work item
.PARAMETER State
No description available.
.PARAMETER Type
No description available.
.PARAMETER RemediationItems
A list of remediation items
.PARAMETER ApprovalItems
A list of items that need to be approved
.PARAMETER Name
The work item name
.PARAMETER Completed
The time at which the work item completed
.PARAMETER NumItems
The number of items in the work item
.PARAMETER Form
No description available.
.PARAMETER Errors
An array of errors that ocurred during the work item
.OUTPUTS

WorkItems<PSCustomObject>
#>

function Initialize-V2024WorkItems {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequesterId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequesterDisplayName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${OwnerName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Finished", "Rejected", "Returned", "Expired", "Pending", "Canceled")]
        [PSCustomObject]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("Generic", "Certification", "Remediation", "Delegation", "Approval", "ViolationReview", "Form", "PolicyVioloation", "Challenge", "ImpactAnalysis", "Signoff", "Event", "ManualAction", "Test")]
        [PSCustomObject]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RemediationItems},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApprovalItems},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Completed},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumItems},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Form},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024WorkItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requesterId" = ${RequesterId}
            "requesterDisplayName" = ${RequesterDisplayName}
            "ownerId" = ${OwnerId}
            "ownerName" = ${OwnerName}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "state" = ${State}
            "type" = ${Type}
            "remediationItems" = ${RemediationItems}
            "approvalItems" = ${ApprovalItems}
            "name" = ${Name}
            "completed" = ${Completed}
            "numItems" = ${NumItems}
            "form" = ${Form}
            "errors" = ${Errors}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkItems<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkItems<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkItems<PSCustomObject>
#>
function ConvertFrom-V2024JsonToWorkItems {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024WorkItems' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024WorkItems
        $AllProperties = ("id", "requesterId", "requesterDisplayName", "ownerId", "ownerName", "created", "modified", "description", "state", "type", "remediationItems", "approvalItems", "name", "completed", "numItems", "form", "errors")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterId"))) { #optional property not found
            $RequesterId = $null
        } else {
            $RequesterId = $JsonParameters.PSobject.Properties["requesterId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterDisplayName"))) { #optional property not found
            $RequesterDisplayName = $null
        } else {
            $RequesterDisplayName = $JsonParameters.PSobject.Properties["requesterDisplayName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerId"))) { #optional property not found
            $OwnerId = $null
        } else {
            $OwnerId = $JsonParameters.PSobject.Properties["ownerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerName"))) { #optional property not found
            $OwnerName = $null
        } else {
            $OwnerName = $JsonParameters.PSobject.Properties["ownerName"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "remediationItems"))) { #optional property not found
            $RemediationItems = $null
        } else {
            $RemediationItems = $JsonParameters.PSobject.Properties["remediationItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalItems"))) { #optional property not found
            $ApprovalItems = $null
        } else {
            $ApprovalItems = $JsonParameters.PSobject.Properties["approvalItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) { #optional property not found
            $Completed = $null
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numItems"))) { #optional property not found
            $NumItems = $null
        } else {
            $NumItems = $JsonParameters.PSobject.Properties["numItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "form"))) { #optional property not found
            $Form = $null
        } else {
            $Form = $JsonParameters.PSobject.Properties["form"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "requesterId" = ${RequesterId}
            "requesterDisplayName" = ${RequesterDisplayName}
            "ownerId" = ${OwnerId}
            "ownerName" = ${OwnerName}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "state" = ${State}
            "type" = ${Type}
            "remediationItems" = ${RemediationItems}
            "approvalItems" = ${ApprovalItems}
            "name" = ${Name}
            "completed" = ${Completed}
            "numItems" = ${NumItems}
            "form" = ${Form}
            "errors" = ${Errors}
        }

        return $PSO
    }

}

