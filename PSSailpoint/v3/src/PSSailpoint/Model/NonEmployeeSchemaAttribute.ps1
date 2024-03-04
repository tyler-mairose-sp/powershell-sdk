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

No description available.

.PARAMETER Id
Schema Attribute Id
.PARAMETER System
True if this schema attribute is mandatory on all non-employees sources.
.PARAMETER Modified
When the schema attribute was last modified.
.PARAMETER Created
When the schema attribute was created.
.PARAMETER Type
No description available.
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

NonEmployeeSchemaAttribute<PSCustomObject>
#>

function Initialize-NonEmployeeSchemaAttribute {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${System},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("TEXT", "DATE", "IDENTITY")]
        [PSCustomObject]
        ${Type},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TechnicalName},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HelpText},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Placeholder},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Required}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => NonEmployeeSchemaAttribute' | Write-Debug
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
            "id" = ${Id}
            "system" = ${System}
            "modified" = ${Modified}
            "created" = ${Created}
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

Convert from JSON to NonEmployeeSchemaAttribute<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeSchemaAttribute<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeSchemaAttribute<PSCustomObject>
#>
function ConvertFrom-JsonToNonEmployeeSchemaAttribute {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => NonEmployeeSchemaAttribute' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NonEmployeeSchemaAttribute
        $AllProperties = ("id", "system", "modified", "created", "type", "label", "technicalName", "helpText", "placeholder", "required")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "system"))) { #optional property not found
            $System = $null
        } else {
            $System = $JsonParameters.PSobject.Properties["system"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
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
            "id" = ${Id}
            "system" = ${System}
            "modified" = ${Modified}
            "created" = ${Created}
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

