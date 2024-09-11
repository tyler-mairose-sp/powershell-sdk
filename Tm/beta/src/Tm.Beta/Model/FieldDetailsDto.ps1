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
The name of the attribute.
.PARAMETER Transform
The transform to apply to the field
.PARAMETER Attributes
Attributes required for the transform
.PARAMETER Type
The type of the attribute.
.PARAMETER IsMultiValued
Flag indicating whether or not the attribute is multi-valued.
.OUTPUTS

FieldDetailsDto<PSCustomObject>
#>

function Initialize-BetaFieldDetailsDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Transform},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsMultiValued} = $false
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaFieldDetailsDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "transform" = ${Transform}
            "attributes" = ${Attributes}
            "type" = ${Type}
            "isMultiValued" = ${IsMultiValued}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FieldDetailsDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to FieldDetailsDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FieldDetailsDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToFieldDetailsDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaFieldDetailsDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaFieldDetailsDto
        $AllProperties = ("name", "transform", "attributes", "isRequired", "type", "isMultiValued")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "transform"))) { #optional property not found
            $Transform = $null
        } else {
            $Transform = $JsonParameters.PSobject.Properties["transform"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isRequired"))) { #optional property not found
            $IsRequired = $null
        } else {
            $IsRequired = $JsonParameters.PSobject.Properties["isRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isMultiValued"))) { #optional property not found
            $IsMultiValued = $null
        } else {
            $IsMultiValued = $JsonParameters.PSobject.Properties["isMultiValued"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "transform" = ${Transform}
            "attributes" = ${Attributes}
            "isRequired" = ${IsRequired}
            "type" = ${Type}
            "isMultiValued" = ${IsMultiValued}
        }

        return $PSO
    }

}

