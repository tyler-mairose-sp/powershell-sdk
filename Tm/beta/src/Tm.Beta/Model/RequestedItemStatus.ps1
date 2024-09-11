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

.PARAMETER Name
Human-readable display name of the item being requested.
.PARAMETER Type
Type of requested object.
.PARAMETER CancelledRequestDetails
No description available.
.PARAMETER ErrorMessages
List of list of localized error messages, if any, encountered during the approval/provisioning process.
.PARAMETER State
No description available.
.PARAMETER ApprovalDetails
Approval details for each item.
.PARAMETER ManualWorkItemDetails
Manual work items created for provisioning the item.
.PARAMETER AccountActivityItemId
Id of associated account activity item.
.PARAMETER RequestType
No description available.
.PARAMETER Modified
When the request was last modified.
.PARAMETER Created
When the request was created.
.PARAMETER Requester
No description available.
.PARAMETER RequestedFor
No description available.
.PARAMETER RequesterComment
No description available.
.PARAMETER SodViolationContext
No description available.
.PARAMETER ProvisioningDetails
No description available.
.PARAMETER PreApprovalTriggerDetails
No description available.
.PARAMETER AccessRequestPhases
A list of Phases that the Access Request has gone through in order, to help determine the status of the request.
.PARAMETER Description
Description associated to the requested object.
.PARAMETER RemoveDate
When the role access is scheduled for removal.
.PARAMETER Cancelable
True if the request can be canceled.
.PARAMETER AccessRequestId
This is the account activity id.
.PARAMETER ClientMetadata
Arbitrary key-value pairs, if any were included in the corresponding access request
.OUTPUTS

RequestedItemStatus<PSCustomObject>
#>

function Initialize-BetaRequestedItemStatus {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_PROFILE", "ROLE", "ENTITLEMENT", "")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CancelledRequestDetails},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[][]]
        ${ErrorMessages},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EXECUTING", "REQUEST_COMPLETED", "CANCELLED", "TERMINATED", "PROVISIONING_VERIFICATION_PENDING", "REJECTED", "PROVISIONING_FAILED", "NOT_ALL_ITEMS_PROVISIONED", "ERROR")]
        [PSCustomObject]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApprovalDetails},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ManualWorkItemDetails},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountActivityItemId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GRANT_ACCESS", "REVOKE_ACCESS", "")]
        [PSCustomObject]
        ${RequestType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Requester},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequestedFor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequesterComment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SodViolationContext},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ProvisioningDetails},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${PreApprovalTriggerDetails},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccessRequestPhases},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RemoveDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Cancelable} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessRequestId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ClientMetadata}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaRequestedItemStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "cancelledRequestDetails" = ${CancelledRequestDetails}
            "errorMessages" = ${ErrorMessages}
            "state" = ${State}
            "approvalDetails" = ${ApprovalDetails}
            "manualWorkItemDetails" = ${ManualWorkItemDetails}
            "accountActivityItemId" = ${AccountActivityItemId}
            "requestType" = ${RequestType}
            "modified" = ${Modified}
            "created" = ${Created}
            "requester" = ${Requester}
            "requestedFor" = ${RequestedFor}
            "requesterComment" = ${RequesterComment}
            "sodViolationContext" = ${SodViolationContext}
            "provisioningDetails" = ${ProvisioningDetails}
            "preApprovalTriggerDetails" = ${PreApprovalTriggerDetails}
            "accessRequestPhases" = ${AccessRequestPhases}
            "description" = ${Description}
            "removeDate" = ${RemoveDate}
            "cancelable" = ${Cancelable}
            "accessRequestId" = ${AccessRequestId}
            "clientMetadata" = ${ClientMetadata}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RequestedItemStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to RequestedItemStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RequestedItemStatus<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRequestedItemStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaRequestedItemStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRequestedItemStatus
        $AllProperties = ("name", "type", "cancelledRequestDetails", "errorMessages", "state", "approvalDetails", "manualWorkItemDetails", "accountActivityItemId", "requestType", "modified", "created", "requester", "requestedFor", "requesterComment", "sodViolationContext", "provisioningDetails", "preApprovalTriggerDetails", "accessRequestPhases", "description", "removeDate", "cancelable", "accessRequestId", "clientMetadata")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cancelledRequestDetails"))) { #optional property not found
            $CancelledRequestDetails = $null
        } else {
            $CancelledRequestDetails = $JsonParameters.PSobject.Properties["cancelledRequestDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errorMessages"))) { #optional property not found
            $ErrorMessages = $null
        } else {
            $ErrorMessages = $JsonParameters.PSobject.Properties["errorMessages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalDetails"))) { #optional property not found
            $ApprovalDetails = $null
        } else {
            $ApprovalDetails = $JsonParameters.PSobject.Properties["approvalDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manualWorkItemDetails"))) { #optional property not found
            $ManualWorkItemDetails = $null
        } else {
            $ManualWorkItemDetails = $JsonParameters.PSobject.Properties["manualWorkItemDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountActivityItemId"))) { #optional property not found
            $AccountActivityItemId = $null
        } else {
            $AccountActivityItemId = $JsonParameters.PSobject.Properties["accountActivityItemId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestType"))) { #optional property not found
            $RequestType = $null
        } else {
            $RequestType = $JsonParameters.PSobject.Properties["requestType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requester"))) { #optional property not found
            $Requester = $null
        } else {
            $Requester = $JsonParameters.PSobject.Properties["requester"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedFor"))) { #optional property not found
            $RequestedFor = $null
        } else {
            $RequestedFor = $JsonParameters.PSobject.Properties["requestedFor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterComment"))) { #optional property not found
            $RequesterComment = $null
        } else {
            $RequesterComment = $JsonParameters.PSobject.Properties["requesterComment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sodViolationContext"))) { #optional property not found
            $SodViolationContext = $null
        } else {
            $SodViolationContext = $JsonParameters.PSobject.Properties["sodViolationContext"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningDetails"))) { #optional property not found
            $ProvisioningDetails = $null
        } else {
            $ProvisioningDetails = $JsonParameters.PSobject.Properties["provisioningDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "preApprovalTriggerDetails"))) { #optional property not found
            $PreApprovalTriggerDetails = $null
        } else {
            $PreApprovalTriggerDetails = $JsonParameters.PSobject.Properties["preApprovalTriggerDetails"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessRequestPhases"))) { #optional property not found
            $AccessRequestPhases = $null
        } else {
            $AccessRequestPhases = $JsonParameters.PSobject.Properties["accessRequestPhases"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDate"))) { #optional property not found
            $RemoveDate = $null
        } else {
            $RemoveDate = $JsonParameters.PSobject.Properties["removeDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cancelable"))) { #optional property not found
            $Cancelable = $null
        } else {
            $Cancelable = $JsonParameters.PSobject.Properties["cancelable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessRequestId"))) { #optional property not found
            $AccessRequestId = $null
        } else {
            $AccessRequestId = $JsonParameters.PSobject.Properties["accessRequestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "clientMetadata"))) { #optional property not found
            $ClientMetadata = $null
        } else {
            $ClientMetadata = $JsonParameters.PSobject.Properties["clientMetadata"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "type" = ${Type}
            "cancelledRequestDetails" = ${CancelledRequestDetails}
            "errorMessages" = ${ErrorMessages}
            "state" = ${State}
            "approvalDetails" = ${ApprovalDetails}
            "manualWorkItemDetails" = ${ManualWorkItemDetails}
            "accountActivityItemId" = ${AccountActivityItemId}
            "requestType" = ${RequestType}
            "modified" = ${Modified}
            "created" = ${Created}
            "requester" = ${Requester}
            "requestedFor" = ${RequestedFor}
            "requesterComment" = ${RequesterComment}
            "sodViolationContext" = ${SodViolationContext}
            "provisioningDetails" = ${ProvisioningDetails}
            "preApprovalTriggerDetails" = ${PreApprovalTriggerDetails}
            "accessRequestPhases" = ${AccessRequestPhases}
            "description" = ${Description}
            "removeDate" = ${RemoveDate}
            "cancelable" = ${Cancelable}
            "accessRequestId" = ${AccessRequestId}
            "clientMetadata" = ${ClientMetadata}
        }

        return $PSO
    }

}

