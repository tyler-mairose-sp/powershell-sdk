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

.PARAMETER Id
The approval id.
.PARAMETER Name
The name of the approval.
.PARAMETER Created
When the approval was created.
.PARAMETER Modified
When the approval was modified last time.
.PARAMETER RequestCreated
When the access-request was created.
.PARAMETER RequestType
No description available.
.PARAMETER Requester
No description available.
.PARAMETER RequestedFor
Identities access was requested for.
.PARAMETER Owner
No description available.
.PARAMETER RequestedObject
No description available.
.PARAMETER RequesterComment
No description available.
.PARAMETER PreviousReviewersComments
The history of the previous reviewers comments.
.PARAMETER ForwardHistory
The history of approval forward action.
.PARAMETER CommentRequiredWhenRejected
When true the rejector has to provide comments when rejecting
.PARAMETER ActionInProcess
No description available.
.PARAMETER RemoveDate
The date the role or access profile or entitlement is no longer assigned to the specified identity.
.PARAMETER RemoveDateUpdateRequested
If true, then the request is to change the remove date or sunset date.
.PARAMETER CurrentRemoveDate
The remove date or sunset date that was assigned at the time of the request.
.PARAMETER SodViolationContext
No description available.
.OUTPUTS

PendingApproval<PSCustomObject>
#>

function Initialize-BetaPendingApproval {
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
        ${RequestCreated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("GRANT_ACCESS", "REVOKE_ACCESS", "")]
        [PSCustomObject]
        ${RequestType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Requester},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${RequestedFor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequestedObject},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RequesterComment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PreviousReviewersComments},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ForwardHistory},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CommentRequiredWhenRejected} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVED", "REJECTED", "FORWARDED")]
        [PSCustomObject]
        ${ActionInProcess},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${RemoveDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RemoveDateUpdateRequested} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CurrentRemoveDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SodViolationContext}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaPendingApproval' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$RequestedFor -and $RequestedFor.length -gt 10) {
            throw "invalid value for 'RequestedFor', number of items must be less than or equal to 10."
        }

        if (!$RequestedFor -and $RequestedFor.length -lt 1) {
            throw "invalid value for 'RequestedFor', number of items must be greater than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "requestCreated" = ${RequestCreated}
            "requestType" = ${RequestType}
            "requester" = ${Requester}
            "requestedFor" = ${RequestedFor}
            "owner" = ${Owner}
            "requestedObject" = ${RequestedObject}
            "requesterComment" = ${RequesterComment}
            "previousReviewersComments" = ${PreviousReviewersComments}
            "forwardHistory" = ${ForwardHistory}
            "commentRequiredWhenRejected" = ${CommentRequiredWhenRejected}
            "actionInProcess" = ${ActionInProcess}
            "removeDate" = ${RemoveDate}
            "removeDateUpdateRequested" = ${RemoveDateUpdateRequested}
            "currentRemoveDate" = ${CurrentRemoveDate}
            "sodViolationContext" = ${SodViolationContext}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PendingApproval<PSCustomObject>

.DESCRIPTION

Convert from JSON to PendingApproval<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PendingApproval<PSCustomObject>
#>
function ConvertFrom-BetaJsonToPendingApproval {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaPendingApproval' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaPendingApproval
        $AllProperties = ("id", "name", "created", "modified", "requestCreated", "requestType", "requester", "requestedFor", "owner", "requestedObject", "requesterComment", "previousReviewersComments", "forwardHistory", "commentRequiredWhenRejected", "actionInProcess", "removeDate", "removeDateUpdateRequested", "currentRemoveDate", "sodViolationContext")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestCreated"))) { #optional property not found
            $RequestCreated = $null
        } else {
            $RequestCreated = $JsonParameters.PSobject.Properties["requestCreated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestType"))) { #optional property not found
            $RequestType = $null
        } else {
            $RequestType = $JsonParameters.PSobject.Properties["requestType"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestedObject"))) { #optional property not found
            $RequestedObject = $null
        } else {
            $RequestedObject = $JsonParameters.PSobject.Properties["requestedObject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requesterComment"))) { #optional property not found
            $RequesterComment = $null
        } else {
            $RequesterComment = $JsonParameters.PSobject.Properties["requesterComment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "previousReviewersComments"))) { #optional property not found
            $PreviousReviewersComments = $null
        } else {
            $PreviousReviewersComments = $JsonParameters.PSobject.Properties["previousReviewersComments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "forwardHistory"))) { #optional property not found
            $ForwardHistory = $null
        } else {
            $ForwardHistory = $JsonParameters.PSobject.Properties["forwardHistory"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commentRequiredWhenRejected"))) { #optional property not found
            $CommentRequiredWhenRejected = $null
        } else {
            $CommentRequiredWhenRejected = $JsonParameters.PSobject.Properties["commentRequiredWhenRejected"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actionInProcess"))) { #optional property not found
            $ActionInProcess = $null
        } else {
            $ActionInProcess = $JsonParameters.PSobject.Properties["actionInProcess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDate"))) { #optional property not found
            $RemoveDate = $null
        } else {
            $RemoveDate = $JsonParameters.PSobject.Properties["removeDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "removeDateUpdateRequested"))) { #optional property not found
            $RemoveDateUpdateRequested = $null
        } else {
            $RemoveDateUpdateRequested = $JsonParameters.PSobject.Properties["removeDateUpdateRequested"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "currentRemoveDate"))) { #optional property not found
            $CurrentRemoveDate = $null
        } else {
            $CurrentRemoveDate = $JsonParameters.PSobject.Properties["currentRemoveDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sodViolationContext"))) { #optional property not found
            $SodViolationContext = $null
        } else {
            $SodViolationContext = $JsonParameters.PSobject.Properties["sodViolationContext"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "requestCreated" = ${RequestCreated}
            "requestType" = ${RequestType}
            "requester" = ${Requester}
            "requestedFor" = ${RequestedFor}
            "owner" = ${Owner}
            "requestedObject" = ${RequestedObject}
            "requesterComment" = ${RequesterComment}
            "previousReviewersComments" = ${PreviousReviewersComments}
            "forwardHistory" = ${ForwardHistory}
            "commentRequiredWhenRejected" = ${CommentRequiredWhenRejected}
            "actionInProcess" = ${ActionInProcess}
            "removeDate" = ${RemoveDate}
            "removeDateUpdateRequested" = ${RemoveDateUpdateRequested}
            "currentRemoveDate" = ${CurrentRemoveDate}
            "sodViolationContext" = ${SodViolationContext}
        }

        return $PSO
    }

}

