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

.PARAMETER Key
Technical name of the Attribute. This is unique and cannot be changed after creation.
.PARAMETER Name
The display name of the key.
.PARAMETER Multiselect
Indicates whether the attribute can have multiple values.
.PARAMETER Status
The status of the Attribute.
.PARAMETER Type
The type of the Attribute. This can be either ""custom"" or ""governance"".
.PARAMETER ObjectTypes
An array of object types this attributes values can be applied to. Possible values are ""all"" or ""entitlement"". Value ""all"" means this attribute can be used with all object types that are supported.
.PARAMETER Description
The description of the Attribute.
.PARAMETER Values
No description available.
.OUTPUTS

AttributeDTO<PSCustomObject>
#>

function Initialize-V2024AttributeDTO {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Multiselect} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ObjectTypes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Values}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AttributeDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
            "multiselect" = ${Multiselect}
            "status" = ${Status}
            "type" = ${Type}
            "objectTypes" = ${ObjectTypes}
            "description" = ${Description}
            "values" = ${Values}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttributeDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttributeDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttributeDTO<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAttributeDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AttributeDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AttributeDTO
        $AllProperties = ("key", "name", "multiselect", "status", "type", "objectTypes", "description", "values")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "multiselect"))) { #optional property not found
            $Multiselect = $null
        } else {
            $Multiselect = $JsonParameters.PSobject.Properties["multiselect"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "objectTypes"))) { #optional property not found
            $ObjectTypes = $null
        } else {
            $ObjectTypes = $JsonParameters.PSobject.Properties["objectTypes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "values"))) { #optional property not found
            $Values = $null
        } else {
            $Values = $JsonParameters.PSobject.Properties["values"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
            "multiselect" = ${Multiselect}
            "status" = ${Status}
            "type" = ${Type}
            "objectTypes" = ${ObjectTypes}
            "description" = ${Description}
            "values" = ${Values}
        }

        return $PSO
    }

}

