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
Unique identifier for the form input.
.PARAMETER Type
FormDefinitionInputType value. STRING FormDefinitionInputTypeString
.PARAMETER Label
Name for the form input.
.PARAMETER Description
Form input's description.
.OUTPUTS

FormDefinitionInput<PSCustomObject>
#>

function Initialize-V2024FormDefinitionInput {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STRING")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Label},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024FormDefinitionInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "label" = ${Label}
            "description" = ${Description}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FormDefinitionInput<PSCustomObject>

.DESCRIPTION

Convert from JSON to FormDefinitionInput<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FormDefinitionInput<PSCustomObject>
#>
function ConvertFrom-V2024JsonToFormDefinitionInput {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024FormDefinitionInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024FormDefinitionInput
        $AllProperties = ("id", "type", "label", "description")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "label"))) { #optional property not found
            $Label = $null
        } else {
            $Label = $JsonParameters.PSobject.Properties["label"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "type" = ${Type}
            "label" = ${Label}
            "description" = ${Description}
        }

        return $PSO
    }

}

