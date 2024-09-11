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

Response model for import of a single object.

.PARAMETER Infos
Informational messages returned from the target service on import.
.PARAMETER Warnings
Warning messages returned from the target service on import.
.PARAMETER Errors
Error messages returned from the target service on import.
.PARAMETER ImportedObjects
References to objects that were created or updated by the import.
.OUTPUTS

ObjectImportResult<PSCustomObject>
#>

function Initialize-V2024ObjectImportResult {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Infos},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Warnings},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Errors},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ImportedObjects}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ObjectImportResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Infos) {
            throw "invalid value for 'Infos', 'Infos' cannot be null."
        }

        if (!$Warnings) {
            throw "invalid value for 'Warnings', 'Warnings' cannot be null."
        }

        if (!$Errors) {
            throw "invalid value for 'Errors', 'Errors' cannot be null."
        }

        if (!$ImportedObjects) {
            throw "invalid value for 'ImportedObjects', 'ImportedObjects' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "infos" = ${Infos}
            "warnings" = ${Warnings}
            "errors" = ${Errors}
            "importedObjects" = ${ImportedObjects}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ObjectImportResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ObjectImportResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ObjectImportResult<PSCustomObject>
#>
function ConvertFrom-V2024JsonToObjectImportResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ObjectImportResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ObjectImportResult
        $AllProperties = ("infos", "warnings", "errors", "importedObjects")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'infos' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "infos"))) {
            throw "Error! JSON cannot be serialized due to the required property 'infos' missing."
        } else {
            $Infos = $JsonParameters.PSobject.Properties["infos"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "warnings"))) {
            throw "Error! JSON cannot be serialized due to the required property 'warnings' missing."
        } else {
            $Warnings = $JsonParameters.PSobject.Properties["warnings"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errors"))) {
            throw "Error! JSON cannot be serialized due to the required property 'errors' missing."
        } else {
            $Errors = $JsonParameters.PSobject.Properties["errors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "importedObjects"))) {
            throw "Error! JSON cannot be serialized due to the required property 'importedObjects' missing."
        } else {
            $ImportedObjects = $JsonParameters.PSobject.Properties["importedObjects"].value
        }

        $PSO = [PSCustomObject]@{
            "infos" = ${Infos}
            "warnings" = ${Warnings}
            "errors" = ${Errors}
            "importedObjects" = ${ImportedObjects}
        }

        return $PSO
    }

}

