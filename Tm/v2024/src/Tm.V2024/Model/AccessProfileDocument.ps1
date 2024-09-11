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

More complete representation of an access profile.  

.PARAMETER Id
Access profile's ID.
.PARAMETER Name
Access profile's name.
.PARAMETER Description
Access item's description.
.PARAMETER Created
ISO-8601 date-time referring to the time when the object was created.
.PARAMETER Modified
ISO-8601 date-time referring to the time when the object was last modified.
.PARAMETER Synced
ISO-8601 date-time referring to the date-time when object was queued to be synced into search database for use in the search API.   This date-time changes anytime there is an update to the object, which triggers a synchronization event being sent to the search database.  There may be some delay between the `synced` time and the time when the updated data is actually available in the search API. 
.PARAMETER Enabled
Indicates whether the access item is currently enabled.
.PARAMETER Requestable
Indicates whether the access item can be requested.
.PARAMETER RequestCommentsRequired
Indicates whether comments are required for requests to access the item.
.PARAMETER Owner
No description available.
.PARAMETER Type
Access profile's document type.  This enum represents the currently supported document types. Additional values may be added in the future without notice.
.PARAMETER Source
No description available.
.PARAMETER Entitlements
Entitlements the access profile has access to.
.PARAMETER EntitlementCount
Number of entitlements.
.PARAMETER Tags
Tags that have been applied to the object.
.OUTPUTS

AccessProfileDocument<PSCustomObject>
#>

function Initialize-V2024AccessProfileDocument {
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
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Synced},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Requestable} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequestCommentsRequired} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("accessprofile", "accountactivity", "account", "aggregation", "entitlement", "event", "identity", "role")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Entitlements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${EntitlementCount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Tags}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024AccessProfileDocument' | Write-Debug
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
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "synced" = ${Synced}
            "enabled" = ${Enabled}
            "requestable" = ${Requestable}
            "requestCommentsRequired" = ${RequestCommentsRequired}
            "owner" = ${Owner}
            "_type" = ${Type}
            "source" = ${Source}
            "entitlements" = ${Entitlements}
            "entitlementCount" = ${EntitlementCount}
            "tags" = ${Tags}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessProfileDocument<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessProfileDocument<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessProfileDocument<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessProfileDocument {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024AccessProfileDocument' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessProfileDocument
        $AllProperties = ("id", "name", "description", "created", "modified", "synced", "enabled", "requestable", "requestCommentsRequired", "owner", "_type", "source", "entitlements", "entitlementCount", "tags")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "synced"))) { #optional property not found
            $Synced = $null
        } else {
            $Synced = $JsonParameters.PSobject.Properties["synced"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestable"))) { #optional property not found
            $Requestable = $null
        } else {
            $Requestable = $JsonParameters.PSobject.Properties["requestable"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestCommentsRequired"))) { #optional property not found
            $RequestCommentsRequired = $null
        } else {
            $RequestCommentsRequired = $JsonParameters.PSobject.Properties["requestCommentsRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlements"))) { #optional property not found
            $Entitlements = $null
        } else {
            $Entitlements = $JsonParameters.PSobject.Properties["entitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlementCount"))) { #optional property not found
            $EntitlementCount = $null
        } else {
            $EntitlementCount = $JsonParameters.PSobject.Properties["entitlementCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "tags"))) { #optional property not found
            $Tags = $null
        } else {
            $Tags = $JsonParameters.PSobject.Properties["tags"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "synced" = ${Synced}
            "enabled" = ${Enabled}
            "requestable" = ${Requestable}
            "requestCommentsRequired" = ${RequestCommentsRequired}
            "owner" = ${Owner}
            "_type" = ${Type}
            "source" = ${Source}
            "entitlements" = ${Entitlements}
            "entitlementCount" = ${EntitlementCount}
            "tags" = ${Tags}
        }

        return $PSO
    }

}

