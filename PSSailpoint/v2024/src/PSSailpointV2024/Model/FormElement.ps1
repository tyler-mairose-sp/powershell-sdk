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
Form element identifier.
.PARAMETER ElementType
FormElementType value.  TEXT FormElementTypeText TOGGLE FormElementTypeToggle TEXTAREA FormElementTypeTextArea HIDDEN FormElementTypeHidden PHONE FormElementTypePhone EMAIL FormElementTypeEmail SELECT FormElementTypeSelect DATE FormElementTypeDate SECTION FormElementTypeSection COLUMN_SET FormElementTypeColumns IMAGE FormElementTypeImage DESCRIPTION FormElementTypeDescription
.PARAMETER Config
Config object.
.PARAMETER Key
Technical key.
.PARAMETER Validations
No description available.
.OUTPUTS

FormElement<PSCustomObject>
#>

function Initialize-V2024FormElement {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("TEXT", "TOGGLE", "TEXTAREA", "HIDDEN", "PHONE", "EMAIL", "SELECT", "DATE", "SECTION", "COLUMN_SET", "IMAGE", "DESCRIPTION")]
        [String]
        ${ElementType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Config},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Validations}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024FormElement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "elementType" = ${ElementType}
            "config" = ${Config}
            "key" = ${Key}
            "validations" = ${Validations}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormElement<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormElement<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormElement<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFormElement {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024FormElement' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FormElement
        $AllProperties = ("id", "elementType", "config", "key", "validations")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "elementType"))) { #optional property not found
            $ElementType = $null
        } else {
            $ElementType = $JsonParameters.PSobject.Properties["elementType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "config"))) { #optional property not found
            $Config = $null
        } else {
            $Config = $JsonParameters.PSobject.Properties["config"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "validations"))) { #optional property not found
            $Validations = $null
        } else {
            $Validations = $JsonParameters.PSobject.Properties["validations"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "elementType" = ${ElementType}
            "config" = ${Config}
            "key" = ${Key}
            "validations" = ${Validations}
        }

        return $PSO
    }

}

