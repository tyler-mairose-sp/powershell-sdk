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

.PARAMETER Id
Action ID. This is a static namespaced ID for the action
.PARAMETER Name
Action Name
.PARAMETER Type
Action type
.PARAMETER Description
Action Description
.PARAMETER FormFields
One or more inputs that the action accepts
.PARAMETER ExampleOutput
No description available.
.PARAMETER Deprecated
No description available.
.PARAMETER DeprecatedBy
No description available.
.PARAMETER VersionNumber
Version number
.PARAMETER IsSimulationEnabled
No description available.
.PARAMETER IsDynamicSchema
Determines whether the dynamic output schema is returned in place of the action's output schema. The dynamic schema lists non-static properties, like properties of a workflow form where each form has different fields. These will be provided dynamically based on available form fields.
.PARAMETER OutputSchema
Defines the output schema, if any, that this action produces.
.OUTPUTS

WorkflowLibraryAction<PSCustomObject>
#>

function Initialize-BetaWorkflowLibraryAction {
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
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormFields},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ExampleOutput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Deprecated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DeprecatedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${VersionNumber},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsSimulationEnabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsDynamicSchema},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OutputSchema}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaWorkflowLibraryAction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "description" = ${Description}
            "formFields" = ${FormFields}
            "exampleOutput" = ${ExampleOutput}
            "deprecated" = ${Deprecated}
            "deprecatedBy" = ${DeprecatedBy}
            "versionNumber" = ${VersionNumber}
            "isSimulationEnabled" = ${IsSimulationEnabled}
            "isDynamicSchema" = ${IsDynamicSchema}
            "outputSchema" = ${OutputSchema}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowLibraryAction<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowLibraryAction<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowLibraryAction<PSCustomObject>
#>
function ConvertFrom-BetaJsonToWorkflowLibraryAction {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaWorkflowLibraryAction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaWorkflowLibraryAction
        $AllProperties = ("id", "name", "type", "description", "formFields", "exampleOutput", "deprecated", "deprecatedBy", "versionNumber", "isSimulationEnabled", "isDynamicSchema", "outputSchema")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formFields"))) { #optional property not found
            $FormFields = $null
        } else {
            $FormFields = $JsonParameters.PSobject.Properties["formFields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exampleOutput"))) { #optional property not found
            $ExampleOutput = $null
        } else {
            $ExampleOutput = $JsonParameters.PSobject.Properties["exampleOutput"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deprecated"))) { #optional property not found
            $Deprecated = $null
        } else {
            $Deprecated = $JsonParameters.PSobject.Properties["deprecated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deprecatedBy"))) { #optional property not found
            $DeprecatedBy = $null
        } else {
            $DeprecatedBy = $JsonParameters.PSobject.Properties["deprecatedBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "versionNumber"))) { #optional property not found
            $VersionNumber = $null
        } else {
            $VersionNumber = $JsonParameters.PSobject.Properties["versionNumber"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isSimulationEnabled"))) { #optional property not found
            $IsSimulationEnabled = $null
        } else {
            $IsSimulationEnabled = $JsonParameters.PSobject.Properties["isSimulationEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isDynamicSchema"))) { #optional property not found
            $IsDynamicSchema = $null
        } else {
            $IsDynamicSchema = $JsonParameters.PSobject.Properties["isDynamicSchema"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outputSchema"))) { #optional property not found
            $OutputSchema = $null
        } else {
            $OutputSchema = $JsonParameters.PSobject.Properties["outputSchema"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "description" = ${Description}
            "formFields" = ${FormFields}
            "exampleOutput" = ${ExampleOutput}
            "deprecated" = ${Deprecated}
            "deprecatedBy" = ${DeprecatedBy}
            "versionNumber" = ${VersionNumber}
            "isSimulationEnabled" = ${IsSimulationEnabled}
            "isDynamicSchema" = ${IsDynamicSchema}
            "outputSchema" = ${OutputSchema}
        }

        return $PSO
    }

}

