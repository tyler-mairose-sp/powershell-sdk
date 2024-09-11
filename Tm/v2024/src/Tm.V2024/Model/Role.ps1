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

A Role

.PARAMETER Id
The id of the Role. This field must be left null when creating an Role, otherwise a 400 Bad Request error will result.
.PARAMETER Name
The human-readable display name of the Role
.PARAMETER Description
A human-readable description of the Role
.PARAMETER Owner
No description available.
.PARAMETER AccessProfiles
No description available.
.PARAMETER Entitlements
No description available.
.PARAMETER Membership
No description available.
.PARAMETER LegacyMembershipInfo
This field is not directly modifiable and is generally expected to be *null*. In very rare instances, some Roles may have been created using membership selection criteria that are no longer fully supported. While these Roles will still work, they should be migrated to STANDARD or IDENTITY_LIST selection criteria. This field exists for informational purposes as an aid to such migration.
.PARAMETER Enabled
Whether the Role is enabled or not.
.PARAMETER Requestable
Whether the Role can be the target of access requests.
.PARAMETER AccessRequestConfig
No description available.
.PARAMETER RevocationRequestConfig
No description available.
.PARAMETER Segments
List of IDs of segments, if any, to which this Role is assigned.
.PARAMETER Dimensional
No description available.
.PARAMETER DimensionRefs
No description available.
.OUTPUTS

Role<PSCustomObject>
#>

function Initialize-V2024Role {
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
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AccessProfiles},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Entitlements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Membership},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${LegacyMembershipInfo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Requestable} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessRequestConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${RevocationRequestConfig},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Segments},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Dimensional},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DimensionRefs}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024Role' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 128) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 128."
        }

        if (!$Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "accessProfiles" = ${AccessProfiles}
            "entitlements" = ${Entitlements}
            "membership" = ${Membership}
            "legacyMembershipInfo" = ${LegacyMembershipInfo}
            "enabled" = ${Enabled}
            "requestable" = ${Requestable}
            "accessRequestConfig" = ${AccessRequestConfig}
            "revocationRequestConfig" = ${RevocationRequestConfig}
            "segments" = ${Segments}
            "dimensional" = ${Dimensional}
            "dimensionRefs" = ${DimensionRefs}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Role<PSCustomObject>

.DESCRIPTION

Convert from JSON to Role<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Role<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRole {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024Role' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Role
        $AllProperties = ("id", "name", "created", "modified", "description", "owner", "accessProfiles", "entitlements", "membership", "legacyMembershipInfo", "enabled", "requestable", "accessRequestConfig", "revocationRequestConfig", "segments", "dimensional", "dimensionRefs")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) {
            throw "Error! JSON cannot be serialized due to the required property 'owner' missing."
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessProfiles"))) { #optional property not found
            $AccessProfiles = $null
        } else {
            $AccessProfiles = $JsonParameters.PSobject.Properties["accessProfiles"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlements"))) { #optional property not found
            $Entitlements = $null
        } else {
            $Entitlements = $JsonParameters.PSobject.Properties["entitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "membership"))) { #optional property not found
            $Membership = $null
        } else {
            $Membership = $JsonParameters.PSobject.Properties["membership"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "legacyMembershipInfo"))) { #optional property not found
            $LegacyMembershipInfo = $null
        } else {
            $LegacyMembershipInfo = $JsonParameters.PSobject.Properties["legacyMembershipInfo"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessRequestConfig"))) { #optional property not found
            $AccessRequestConfig = $null
        } else {
            $AccessRequestConfig = $JsonParameters.PSobject.Properties["accessRequestConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "revocationRequestConfig"))) { #optional property not found
            $RevocationRequestConfig = $null
        } else {
            $RevocationRequestConfig = $JsonParameters.PSobject.Properties["revocationRequestConfig"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "segments"))) { #optional property not found
            $Segments = $null
        } else {
            $Segments = $JsonParameters.PSobject.Properties["segments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dimensional"))) { #optional property not found
            $Dimensional = $null
        } else {
            $Dimensional = $JsonParameters.PSobject.Properties["dimensional"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dimensionRefs"))) { #optional property not found
            $DimensionRefs = $null
        } else {
            $DimensionRefs = $JsonParameters.PSobject.Properties["dimensionRefs"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "owner" = ${Owner}
            "accessProfiles" = ${AccessProfiles}
            "entitlements" = ${Entitlements}
            "membership" = ${Membership}
            "legacyMembershipInfo" = ${LegacyMembershipInfo}
            "enabled" = ${Enabled}
            "requestable" = ${Requestable}
            "accessRequestConfig" = ${AccessRequestConfig}
            "revocationRequestConfig" = ${RevocationRequestConfig}
            "segments" = ${Segments}
            "dimensional" = ${Dimensional}
            "dimensionRefs" = ${DimensionRefs}
        }

        return $PSO
    }

}

