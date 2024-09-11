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

Identity attribute IDs.

.PARAMETER Ids
List of identity attributes' technical names.
.OUTPUTS

IdentityAttributeNames<PSCustomObject>
#>

function Initialize-V2024IdentityAttributeNames {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Ids}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024IdentityAttributeNames' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityAttributeNames<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityAttributeNames<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityAttributeNames<PSCustomObject>
#>
function ConvertFrom-V2024JsonToIdentityAttributeNames {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024IdentityAttributeNames' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024IdentityAttributeNames
        $AllProperties = ("ids")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ids"))) { #optional property not found
            $Ids = $null
        } else {
            $Ids = $JsonParameters.PSobject.Properties["ids"].value
        }

        $PSO = [PSCustomObject]@{
            "ids" = ${Ids}
        }

        return $PSO
    }

}

