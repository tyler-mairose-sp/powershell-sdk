#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER State
No description available.
.OUTPUTS

RoleMiningSessionStatus<PSCustomObject>
#>

function Initialize-BetaRoleMiningSessionStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("CREATED", "UPDATED", "IDENTITIES_OBTAINED", "PRUNE_THRESHOLD_OBTAINED", "POTENTIAL_ROLES_PROCESSING", "POTENTIAL_ROLES_CREATED")]
        [PSCustomObject]
        ${State}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRoleMiningSessionStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "state" = ${State}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleMiningSessionStatus<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleMiningSessionStatus<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleMiningSessionStatus<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRoleMiningSessionStatus {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRoleMiningSessionStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRoleMiningSessionStatus
        $AllProperties = ("state")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        $PSO = [PSCustomObject]@{
            "state" = ${State}
        }

        return $PSO
    }

}

