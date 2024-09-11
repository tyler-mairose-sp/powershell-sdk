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

.PARAMETER PatchedObjects
No description available.
.OUTPUTS

ObjectMappingBulkPatchResponse<PSCustomObject>
#>

function Initialize-V2024ObjectMappingBulkPatchResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${PatchedObjects}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ObjectMappingBulkPatchResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "patchedObjects" = ${PatchedObjects}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ObjectMappingBulkPatchResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ObjectMappingBulkPatchResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ObjectMappingBulkPatchResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToObjectMappingBulkPatchResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ObjectMappingBulkPatchResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ObjectMappingBulkPatchResponse
        $AllProperties = ("patchedObjects")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "patchedObjects"))) { #optional property not found
            $PatchedObjects = $null
        } else {
            $PatchedObjects = $JsonParameters.PSobject.Properties["patchedObjects"].value
        }

        $PSO = [PSCustomObject]@{
            "patchedObjects" = ${PatchedObjects}
        }

        return $PSO
    }

}

