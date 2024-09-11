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

.PARAMETER Expression
No description available.
.OUTPUTS

VisibilityCriteria<PSCustomObject>
#>

function Initialize-V2024VisibilityCriteria {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Expression}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024VisibilityCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "expression" = ${Expression}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to VisibilityCriteria<PSCustomObject>

.DESCRIPTION

Convert from JSON to VisibilityCriteria<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

VisibilityCriteria<PSCustomObject>
#>
function ConvertFrom-V2024JsonToVisibilityCriteria {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024VisibilityCriteria' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024VisibilityCriteria
        $AllProperties = ("expression")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expression"))) { #optional property not found
            $Expression = $null
        } else {
            $Expression = $JsonParameters.PSobject.Properties["expression"].value
        }

        $PSO = [PSCustomObject]@{
            "expression" = ${Expression}
        }

        return $PSO
    }

}

