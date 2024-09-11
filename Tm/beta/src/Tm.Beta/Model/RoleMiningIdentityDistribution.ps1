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

.PARAMETER AttributeName
Id of the potential role
.PARAMETER Distribution
No description available.
.OUTPUTS

RoleMiningIdentityDistribution<PSCustomObject>
#>

function Initialize-BetaRoleMiningIdentityDistribution {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AttributeName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable[]]
        ${Distribution}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaRoleMiningIdentityDistribution' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attributeName" = ${AttributeName}
            "distribution" = ${Distribution}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningIdentityDistribution<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningIdentityDistribution<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningIdentityDistribution<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningIdentityDistribution {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaRoleMiningIdentityDistribution' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningIdentityDistribution
        $AllProperties = ("attributeName", "distribution")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeName"))) { #optional property not found
            $AttributeName = $null
        } else {
            $AttributeName = $JsonParameters.PSobject.Properties["attributeName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "distribution"))) { #optional property not found
            $Distribution = $null
        } else {
            $Distribution = $JsonParameters.PSobject.Properties["distribution"].value
        }

        $PSO = [PSCustomObject]@{
            "attributeName" = ${AttributeName}
            "distribution" = ${Distribution}
        }

        return $PSO
    }

}

