#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Event

.PARAMETER Id
No description available.
.PARAMETER Name
No description available.
.PARAMETER Type
No description available.
.PARAMETER Created
ISO-8601 date-time referring to the time when the object was created.
.PARAMETER Synced
ISO-8601 date-time referring to the date-time when object was queued to be synced into search database for use in the search API.   This date-time changes anytime there is an update to the object, which triggers a synchronization event being sent to the search database.  There may be some delay between the `synced` time and the time when the updated data is actually available in the search API. 
.PARAMETER Action
Name of the event as it's displayed in audit reports.
.PARAMETER Type
Event type. Refer to [Event Types](https://documentation.sailpoint.com/saas/help/search/index.html#event-types) for a list of event types and their meanings.
.PARAMETER Actor
Name of the actor that generated the event.
.PARAMETER Target
Name of the target, or recipient, of the event.
.PARAMETER Stack
The event's stack.
.PARAMETER TrackingNumber
ID of the group of events.
.PARAMETER IpAddress
Target system's IP address.
.PARAMETER Details
ID of event's details.
.PARAMETER Attributes
Attributes involved in the event.
.PARAMETER Objects
Objects the event is happening to.
.PARAMETER Operation
Operation, or action, performed during the event.
.PARAMETER Status
Event status. Refer to [Event Statuses](https://documentation.sailpoint.com/saas/help/search/index.html#event-statuses) for a list of event statuses and their meanings.
.PARAMETER TechnicalName
Event's normalized name. This normalized name always follows the pattern of 'objects_operation_status'.
.OUTPUTS

ModelEvent<PSCustomObject>
#>

function Initialize-ModelEvent {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("accessprofile", "accountactivity", "account", "aggregation", "entitlement", "event", "identity", "role")]
        [PSCustomObject]
        ${DocumentType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Synced},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Action},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Actor},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Target},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Stack},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingNumber},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IpAddress},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Details},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Objects},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TechnicalName}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => ModelEvent' | Write-Debug
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
            "_type" = ${DocumentType}
            "created" = ${Created}
            "synced" = ${Synced}
            "action" = ${Action}
            "type" = ${Type}
            "actor" = ${Actor}
            "target" = ${Target}
            "stack" = ${Stack}
            "trackingNumber" = ${TrackingNumber}
            "ipAddress" = ${IpAddress}
            "details" = ${Details}
            "attributes" = ${Attributes}
            "objects" = ${Objects}
            "operation" = ${Operation}
            "status" = ${Status}
            "technicalName" = ${TechnicalName}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ModelEvent<PSCustomObject>

.DESCRIPTION

Convert from JSON to ModelEvent<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ModelEvent<PSCustomObject>
#>
function ConvertFrom-JsonToModelEvent {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => ModelEvent' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ModelEvent
        $AllProperties = ("id", "name", "_type", "created", "synced", "action", "type", "actor", "target", "stack", "trackingNumber", "ipAddress", "details", "attributes", "objects", "operation", "status", "technicalName")
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
            $DocumentType = $JsonParameters.PSobject.Properties["_type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "synced"))) { #optional property not found
            $Synced = $null
        } else {
            $Synced = $JsonParameters.PSobject.Properties["synced"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "action"))) { #optional property not found
            $Action = $null
        } else {
            $Action = $JsonParameters.PSobject.Properties["action"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actor"))) { #optional property not found
            $Actor = $null
        } else {
            $Actor = $JsonParameters.PSobject.Properties["actor"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "target"))) { #optional property not found
            $Target = $null
        } else {
            $Target = $JsonParameters.PSobject.Properties["target"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stack"))) { #optional property not found
            $Stack = $null
        } else {
            $Stack = $JsonParameters.PSobject.Properties["stack"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trackingNumber"))) { #optional property not found
            $TrackingNumber = $null
        } else {
            $TrackingNumber = $JsonParameters.PSobject.Properties["trackingNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ipAddress"))) { #optional property not found
            $IpAddress = $null
        } else {
            $IpAddress = $JsonParameters.PSobject.Properties["ipAddress"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "details"))) { #optional property not found
            $Details = $null
        } else {
            $Details = $JsonParameters.PSobject.Properties["details"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objects"))) { #optional property not found
            $Objects = $null
        } else {
            $Objects = $JsonParameters.PSobject.Properties["objects"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "technicalName"))) { #optional property not found
            $TechnicalName = $null
        } else {
            $TechnicalName = $JsonParameters.PSobject.Properties["technicalName"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "_type" = ${DocumentType}
            "created" = ${Created}
            "synced" = ${Synced}
            "action" = ${Action}
            "type" = ${Type}
            "actor" = ${Actor}
            "target" = ${Target}
            "stack" = ${Stack}
            "trackingNumber" = ${TrackingNumber}
            "ipAddress" = ${IpAddress}
            "details" = ${Details}
            "attributes" = ${Attributes}
            "objects" = ${Objects}
            "operation" = ${Operation}
            "status" = ${Status}
            "technicalName" = ${TechnicalName}
        }

        return $PSO
    }

}

