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
Unique guid identifying the form definition.
.PARAMETER Name
Name of the form definition.
.PARAMETER Description
Form definition's description.
.PARAMETER Owner
No description available.
.PARAMETER UsedBy
List of objects using the form definition. Whenever a system uses a form, the API reaches out to the form service to record that the system is currently using it.
.PARAMETER FormInput
List of form inputs required to create a form-instance object.
.PARAMETER FormElements
List of nested form elements.
.PARAMETER FormConditions
Conditional logic that can dynamically modify the form as the recipient is interacting with it.
.PARAMETER Created
Created is the date the form definition was created
.PARAMETER Modified
Modified is the last date the form definition was modified
.OUTPUTS

FormDefinitionResponse<PSCustomObject>
#>

function Initialize-BetaFormDefinitionResponse {
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
        ${UsedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormElements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormConditions},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaFormDefinitionResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "usedBy" = ${UsedBy}
            "formInput" = ${FormInput}
            "formElements" = ${FormElements}
            "formConditions" = ${FormConditions}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormDefinitionResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormDefinitionResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormDefinitionResponse<PSCustomObject>
#>
function ConvertFrom-BetaJsonToFormDefinitionResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaFormDefinitionResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaFormDefinitionResponse
        $AllProperties = ("id", "name", "description", "owner", "usedBy", "formInput", "formElements", "formConditions", "created", "modified")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "owner"))) { #optional property not found
            $Owner = $null
        } else {
            $Owner = $JsonParameters.PSobject.Properties["owner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "usedBy"))) { #optional property not found
            $UsedBy = $null
        } else {
            $UsedBy = $JsonParameters.PSobject.Properties["usedBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formInput"))) { #optional property not found
            $FormInput = $null
        } else {
            $FormInput = $JsonParameters.PSobject.Properties["formInput"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formElements"))) { #optional property not found
            $FormElements = $null
        } else {
            $FormElements = $JsonParameters.PSobject.Properties["formElements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formConditions"))) { #optional property not found
            $FormConditions = $null
        } else {
            $FormConditions = $JsonParameters.PSobject.Properties["formConditions"].value
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

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "owner" = ${Owner}
            "usedBy" = ${UsedBy}
            "formInput" = ${FormInput}
            "formElements" = ${FormElements}
            "formConditions" = ${FormConditions}
            "created" = ${Created}
            "modified" = ${Modified}
        }

        return $PSO
    }

}

