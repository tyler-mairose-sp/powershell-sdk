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

function Initialize-WorkflowLibraryFormFields {
    [CmdletBinding()]
    Param (
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
        ${Required} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("text", "textarea", "boolean", "email", "url", "number", "json", "checkbox", "jsonpath", "select", "multiType", "duration", "toggle", "identityPicker", "governanceGroupPicker", "string", "object", "array", "secret", "keyValuePairs", "emailPicker", "advancedToggle")]
        [PSCustomObject]
        ${Type}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => WorkflowLibraryFormFields' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
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
function ConvertFrom-JsonToWorkflowLibraryFormFields {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => WorkflowLibraryFormFields' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WorkflowLibraryFormFields
        $AllProperties = ("helpText", "label", "name", "required", "type")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
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
            "helpText" = ${HelpText}
            "label" = ${Label}
            "name" = ${Name}
            "required" = ${Required}
            "type" = ${Type}
        }

        return $PSO
    }

}

