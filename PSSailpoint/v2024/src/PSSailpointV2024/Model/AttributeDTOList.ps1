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

.PARAMETER Attributes
No description available.
.OUTPUTS

AttributeDTOList<PSCustomObject>
#>

function Initialize-V2024AttributeDTOList {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AttributeDTOList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttributeDTOList<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttributeDTOList<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttributeDTOList<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAttributeDTOList {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AttributeDTOList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AttributeDTOList
        $AllProperties = ("attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}

