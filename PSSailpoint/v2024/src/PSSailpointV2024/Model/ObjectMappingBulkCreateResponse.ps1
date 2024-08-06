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

.PARAMETER AddedObjects
No description available.
.OUTPUTS

ObjectMappingBulkCreateResponse<PSCustomObject>
#>

function Initialize-V2024ObjectMappingBulkCreateResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AddedObjects}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ObjectMappingBulkCreateResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "addedObjects" = ${AddedObjects}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ObjectMappingBulkCreateResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ObjectMappingBulkCreateResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ObjectMappingBulkCreateResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToObjectMappingBulkCreateResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ObjectMappingBulkCreateResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ObjectMappingBulkCreateResponse
        $AllProperties = ("addedObjects")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "addedObjects"))) { #optional property not found
            $AddedObjects = $null
        } else {
            $AddedObjects = $JsonParameters.PSobject.Properties["addedObjects"].value
        }

        $PSO = [PSCustomObject]@{
            "addedObjects" = ${AddedObjects}
        }

        return $PSO
    }

}

