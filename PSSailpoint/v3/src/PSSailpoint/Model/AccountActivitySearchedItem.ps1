#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

AccountActivity

.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.PARAMETER Type
No description available.
.PARAMETER Action
Type of action performed in the activity.
.PARAMETER Created
ISO-8601 date-time referring to the time when the object was created.
.PARAMETER Modified
ISO-8601 date-time referring to the time when the object was last modified.
.PARAMETER Stage
Activity's current stage.
.PARAMETER Origin
Activity's origin.
.PARAMETER Status
Activity's current status.
.PARAMETER Requester
No description available.
.PARAMETER Recipient
No description available.
.PARAMETER TrackingNumber
Account activity's tracking number.
.PARAMETER Errors
Errors provided by the source while completing account actions.
.PARAMETER Warnings
Warnings provided by the source while completing account actions.
.PARAMETER Approvals
Approvals performed on an item during activity.
.PARAMETER OriginalRequests
Original actions that triggered all individual source actions related to the account action.
.PARAMETER ExpansionItems
Controls that translated the attribute requests into actual provisioning actions on the source.
.PARAMETER AccountRequests
Account data for each individual source action triggered by the original requests.
.PARAMETER Sources
Sources involved in the account activity.
.OUTPUTS

AccountActivitySearchedItem<PSCustomObject>
#>

function Initialize-AccountActivitySearchedItem {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("accessprofile", "accountactivity", "account", "aggregation", "entitlement", "event", "identity", "role")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Stage},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Origin},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Requester},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Recipient},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingNumber},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Errors},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Warnings},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Approvals},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${OriginalRequests},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ExpansionItems},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccountRequests},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Sources}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => AccountActivitySearchedItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
            "action" = ${Action}
            "created" = ${Created}
            "modified" = ${Modified}
            "stage" = ${Stage}
            "origin" = ${Origin}
            "status" = ${Status}
            "requester" = ${Requester}
            "recipient" = ${Recipient}
            "trackingNumber" = ${TrackingNumber}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
            "approvals" = ${Approvals}
            "originalRequests" = ${OriginalRequests}
            "expansionItems" = ${ExpansionItems}
            "accountRequests" = ${AccountRequests}
            "sources" = ${Sources}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountActivitySearchedItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountActivitySearchedItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountActivitySearchedItem<PSCustomObject>
#>
function ConvertFrom-JsonToAccountActivitySearchedItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => AccountActivitySearchedItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AccountActivitySearchedItem
        $AllProperties = ("id", "name", "_type", "action", "created", "modified", "stage", "origin", "status", "requester", "recipient", "trackingNumber", "errors", "warnings", "approvals", "originalRequests", "expansionItems", "accountRequests", "sources")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "_type"))) {
            throw "Error! JSON cannot be serialized due to the required property '_type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["action"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stage"))) { #optional property not found
            $Stage = $null
        } else {
            $Stage = $JsonParameters.PSobject.Properties["stage"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "origin"))) { #optional property not found
            $Origin = $null
        } else {
            $Origin = $JsonParameters.PSobject.Properties["origin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requester"))) { #optional property not found
            $Requester = $null
        } else {
            $Requester = $JsonParameters.PSobject.Properties["requester"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipient"))) { #optional property not found
            $Recipient = $null
        } else {
            $Recipient = $JsonParameters.PSobject.Properties["recipient"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trackingNumber"))) { #optional property not found
            $TrackingNumber = $null
        } else {
            $TrackingNumber = $JsonParameters.PSobject.Properties["trackingNumber"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvals"))) { #optional property not found
            $Approvals = $null
        } else {
            $Approvals = $JsonParameters.PSobject.Properties["approvals"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "originalRequests"))) { #optional property not found
            $OriginalRequests = $null
        } else {
            $OriginalRequests = $JsonParameters.PSobject.Properties["originalRequests"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expansionItems"))) { #optional property not found
            $ExpansionItems = $null
        } else {
            $ExpansionItems = $JsonParameters.PSobject.Properties["expansionItems"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountRequests"))) { #optional property not found
            $AccountRequests = $null
        } else {
            $AccountRequests = $JsonParameters.PSobject.Properties["accountRequests"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sources"))) { #optional property not found
            $Sources = $null
        } else {
            $Sources = $JsonParameters.PSobject.Properties["sources"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${Type}
            "action" = ${Action}
            "created" = ${Created}
            "modified" = ${Modified}
            "stage" = ${Stage}
            "origin" = ${Origin}
            "status" = ${Status}
            "requester" = ${Requester}
            "recipient" = ${Recipient}
            "trackingNumber" = ${TrackingNumber}
            "errors" = ${Errors}
            "warnings" = ${Warnings}
            "approvals" = ${Approvals}
            "originalRequests" = ${OriginalRequests}
            "expansionItems" = ${ExpansionItems}
            "accountRequests" = ${AccountRequests}
            "sources" = ${Sources}
        }

        return $PSO
    }

}

