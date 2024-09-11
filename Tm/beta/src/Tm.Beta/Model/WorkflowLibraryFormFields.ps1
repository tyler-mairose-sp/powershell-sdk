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

.PARAMETER Description
Description of the form field
.PARAMETER HelpText
Describes the form field in the UI
.PARAMETER Label
A human readable name for this form field in the UI
.PARAMETER Name
The name of the input attribute
.PARAMETER Required
Denotes if this field is a required attribute
.PARAMETER Type
The type of the form field
.OUTPUTS

WorkflowLibraryFormFields<PSCustomObject>
#>

function Initialize-BetaWorkflowLibraryFormFields {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${HelpText},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Required},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("text", "textarea", "boolean", "email", "url", "number", "json", "checkbox", "jsonpath", "select", "multiType", "duration", "toggle", "formPicker", "identityPicker", "governanceGroupPicker", "string", "object", "array", "secret", "keyValuePairs", "emailPicker", "advancedToggle", "variableCreator", "htmlEditor")]
        [String]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaWorkflowLibraryFormFields' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "helpText" = ${HelpText}
            "label" = ${Label}
            "name" = ${Name}
            "required" = ${Required}
            "type" = ${Type}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowLibraryFormFields<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowLibraryFormFields<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowLibraryFormFields<PSCustomObject>
#>
function ConvertFrom-BetaJsonToWorkflowLibraryFormFields {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaWorkflowLibraryFormFields' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaWorkflowLibraryFormFields
        $AllProperties = ("description", "helpText", "label", "name", "required", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "helpText"))) { #optional property not found
            $HelpText = $null
        } else {
            $HelpText = $JsonParameters.PSobject.Properties["helpText"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "required"))) { #optional property not found
            $Required = $null
        } else {
            $Required = $JsonParameters.PSobject.Properties["required"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        $PSO = [PSCustomObject]@{
            "description" = ${Description}
            "helpText" = ${HelpText}
            "label" = ${Label}
            "name" = ${Name}
            "required" = ${Required}
            "type" = ${Type}
        }

        return $PSO
    }

}

