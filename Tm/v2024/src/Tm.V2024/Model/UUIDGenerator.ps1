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

.PARAMETER RequiresPeriodicRefresh
A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process
.OUTPUTS

UUIDGenerator<PSCustomObject>
#>

function Initialize-V2024UUIDGenerator {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequiresPeriodicRefresh} = $false
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024UUIDGenerator' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UUIDGenerator<PSCustomObject>

.DESCRIPTION

Convert from JSON to UUIDGenerator<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UUIDGenerator<PSCustomObject>
#>
function ConvertFrom-V2024JsonToUUIDGenerator {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024UUIDGenerator' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024UUIDGenerator
        $AllProperties = ("requiresPeriodicRefresh")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requiresPeriodicRefresh"))) { #optional property not found
            $RequiresPeriodicRefresh = $null
        } else {
            $RequiresPeriodicRefresh = $JsonParameters.PSobject.Properties["requiresPeriodicRefresh"].value
        }

        $PSO = [PSCustomObject]@{
            "requiresPeriodicRefresh" = ${RequiresPeriodicRefresh}
        }

        return $PSO
    }

}

