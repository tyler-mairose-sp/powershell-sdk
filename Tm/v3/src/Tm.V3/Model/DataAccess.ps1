#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

DAS data for the entitlement

.PARAMETER Policies
List of classification policies that apply to resources the entitlement \ groups has access to
.PARAMETER Categories
List of classification categories that apply to resources the entitlement \ groups has access to
.PARAMETER ImpactScore
No description available.
.OUTPUTS

DataAccess<PSCustomObject>
#>

function Initialize-DataAccess {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Policies},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Categories},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ImpactScore}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => DataAccess' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "policies" = ${Policies}
            "categories" = ${Categories}
            "impactScore" = ${ImpactScore}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DataAccess<PSCustomObject>

.DESCRIPTION

Convert from JSON to DataAccess<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DataAccess<PSCustomObject>
#>
function ConvertFrom-JsonToDataAccess {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => DataAccess' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DataAccess
        $AllProperties = ("policies", "categories", "impactScore")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "policies"))) { #optional property not found
            $Policies = $null
        } else {
            $Policies = $JsonParameters.PSobject.Properties["policies"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "categories"))) { #optional property not found
            $Categories = $null
        } else {
            $Categories = $JsonParameters.PSobject.Properties["categories"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "impactScore"))) { #optional property not found
            $ImpactScore = $null
        } else {
            $ImpactScore = $JsonParameters.PSobject.Properties["impactScore"].value
        }

        $PSO = [PSCustomObject]@{
            "policies" = ${Policies}
            "categories" = ${Categories}
            "impactScore" = ${ImpactScore}
        }

        return $PSO
    }

}

