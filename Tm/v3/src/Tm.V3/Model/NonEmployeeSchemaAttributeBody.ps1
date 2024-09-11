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

No description available.

.PARAMETER Type
Type of the attribute. Only type 'TEXT' is supported for custom attributes.
.PARAMETER Label
Label displayed on the UI for this schema attribute.
.PARAMETER TechnicalName
The technical name of the attribute. Must be unique per source.
.PARAMETER HelpText
help text displayed by UI.
.PARAMETER Placeholder
Hint text that fills UI box.
.PARAMETER Required
If true, the schema attribute is required for all non-employees in the source
.OUTPUTS

NonEmployeeSchemaAttributeBody<PSCustomObject>
#>

function Initialize-NonEmployeeSchemaAttributeBody {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TechnicalName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HelpText},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Placeholder},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Required}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => NonEmployeeSchemaAttributeBody' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Label) {
            throw "invalid value for 'Label', 'Label' cannot be null."
        }

        if (!$TechnicalName) {
            throw "invalid value for 'TechnicalName', 'TechnicalName' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "label" = ${Label}
            "technicalName" = ${TechnicalName}
            "helpText" = ${HelpText}
            "placeholder" = ${Placeholder}
            "required" = ${Required}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeSchemaAttributeBody<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeSchemaAttributeBody<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeSchemaAttributeBody<PSCustomObject>
#>
function ConvertFrom-JsonToNonEmployeeSchemaAttributeBody {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => NonEmployeeSchemaAttributeBody' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NonEmployeeSchemaAttributeBody
        $AllProperties = ("type", "label", "technicalName", "helpText", "placeholder", "required")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "label"))) {
            throw "Error! JSON cannot be serialized due to the required property 'label' missing."
        } else {
            $Label = $JsonParameters.PSobject.Properties["label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "technicalName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'technicalName' missing."
        } else {
            $TechnicalName = $JsonParameters.PSobject.Properties["technicalName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "helpText"))) { #optional property not found
            $HelpText = $null
        } else {
            $HelpText = $JsonParameters.PSobject.Properties["helpText"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "placeholder"))) { #optional property not found
            $Placeholder = $null
        } else {
            $Placeholder = $JsonParameters.PSobject.Properties["placeholder"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "required"))) { #optional property not found
            $Required = $null
        } else {
            $Required = $JsonParameters.PSobject.Properties["required"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "label" = ${Label}
            "technicalName" = ${TechnicalName}
            "helpText" = ${HelpText}
            "placeholder" = ${Placeholder}
            "required" = ${Required}
        }

        return $PSO
    }

}

