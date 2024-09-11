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

.PARAMETER Errors
No description available.
.PARAMETER ImportedObjects
No description available.
.PARAMETER Infos
No description available.
.PARAMETER Warnings
No description available.
.OUTPUTS

ImportFormDefinitions202Response<PSCustomObject>
#>

function Initialize-V2024ImportFormDefinitions202Response {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Errors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ImportedObjects},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Infos},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Warnings}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ImportFormDefinitions202Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
            "importedObjects" = ${ImportedObjects}
            "infos" = ${Infos}
            "warnings" = ${Warnings}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImportFormDefinitions202Response<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImportFormDefinitions202Response<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImportFormDefinitions202Response<PSCustomObject>
#>
function ConvertFrom-V2024JsonToImportFormDefinitions202Response {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ImportFormDefinitions202Response' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ImportFormDefinitions202Response
        $AllProperties = ("errors", "importedObjects", "infos", "warnings")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) { #optional property not found
            $Errors = $null
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "importedObjects"))) { #optional property not found
            $ImportedObjects = $null
        } else {
            $ImportedObjects = $JsonParameters.PSobject.Properties["importedObjects"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "infos"))) { #optional property not found
            $Infos = $null
        } else {
            $Infos = $JsonParameters.PSobject.Properties["infos"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "warnings"))) { #optional property not found
            $Warnings = $null
        } else {
            $Warnings = $JsonParameters.PSobject.Properties["warnings"].value
        }

        $PSO = [PSCustomObject]@{
            "errors" = ${Errors}
            "importedObjects" = ${ImportedObjects}
            "infos" = ${Infos}
            "warnings" = ${Warnings}
        }

        return $PSO
    }

}

