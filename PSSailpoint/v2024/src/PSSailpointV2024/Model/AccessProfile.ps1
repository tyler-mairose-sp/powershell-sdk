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

Access Profile

.PARAMETER Name
Name of the Access Profile
.PARAMETER Description
Information about the Access Profile
.PARAMETER Enabled
Whether the Access Profile is enabled. If the Access Profile is enabled then you must include at least one Entitlement.
.PARAMETER Owner
No description available.
.PARAMETER Source
No description available.
.PARAMETER Entitlements
A list of entitlements associated with the Access Profile. If enabled is false this is allowed to be empty otherwise it needs to contain at least one Entitlement.
.PARAMETER Requestable
Whether the Access Profile is requestable via access request. Currently, making an Access Profile non-requestable is only supported  for customers enabled with the new Request Center. Otherwise, attempting to create an Access Profile with a value  **false** in this field results in a 400 error.
.PARAMETER AccessRequestConfig
No description available.
.PARAMETER RevocationRequestConfig
No description available.
.PARAMETER Segments
List of IDs of segments, if any, to which this Access Profile is assigned.
.PARAMETER ProvisioningCriteria
No description available.
.OUTPUTS

AccessProfile<PSCustomObject>
#>

function Initialize-V2024AccessProfile {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Owner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Entitlements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Requestable} = $true,
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
        [PSCustomObject]
        ${ProvisioningCriteria}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AccessProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Owner) {
            throw "invalid value for 'Owner', 'Owner' cannot be null."
        }

        if (!$Source) {
            throw "invalid value for 'Source', 'Source' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "enabled" = ${Enabled}
            "owner" = ${Owner}
            "source" = ${Source}
            "entitlements" = ${Entitlements}
            "requestable" = ${Requestable}
            "accessRequestConfig" = ${AccessRequestConfig}
            "revocationRequestConfig" = ${RevocationRequestConfig}
            "segments" = ${Segments}
            "provisioningCriteria" = ${ProvisioningCriteria}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessProfile<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessProfile<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessProfile<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccessProfile {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AccessProfile' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AccessProfile
        $AllProperties = ("id", "name", "description", "created", "modified", "enabled", "owner", "source", "entitlements", "requestable", "accessRequestConfig", "revocationRequestConfig", "segments", "provisioningCriteria")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) {
            throw "Error! JSON cannot be serialized due to the required property 'source' missing."
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitlements"))) { #optional property not found
            $Entitlements = $null
        } else {
            $Entitlements = $JsonParameters.PSobject.Properties["entitlements"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "provisioningCriteria"))) { #optional property not found
            $ProvisioningCriteria = $null
        } else {
            $ProvisioningCriteria = $JsonParameters.PSobject.Properties["provisioningCriteria"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "created" = ${Created}
            "modified" = ${Modified}
            "enabled" = ${Enabled}
            "owner" = ${Owner}
            "source" = ${Source}
            "entitlements" = ${Entitlements}
            "requestable" = ${Requestable}
            "accessRequestConfig" = ${AccessRequestConfig}
            "revocationRequestConfig" = ${RevocationRequestConfig}
            "segments" = ${Segments}
            "provisioningCriteria" = ${ProvisioningCriteria}
        }

        return $PSO
    }

}

