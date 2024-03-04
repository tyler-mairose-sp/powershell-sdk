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

Simplified DTO for the Permission objects stored in SailPoint's database. The data is aggregated from customer systems and is free-form, so its appearance can vary largely between different clients/customers.

.OUTPUTS

PermissionDto<PSCustomObject>
#>

function Initialize-BetaPermissionDto {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaPermissionDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PermissionDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to PermissionDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PermissionDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToPermissionDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaPermissionDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaPermissionDto
        $AllProperties = ("rights", "target")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rights"))) { #optional property not found
            $Rights = $null
        } else {
            $Rights = $JsonParameters.PSobject.Properties["rights"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "target"))) { #optional property not found
            $Target = $null
        } else {
            $Target = $JsonParameters.PSobject.Properties["target"].value
        }

        $PSO = [PSCustomObject]@{
            "rights" = ${Rights}
            "target" = ${Target}
        }

        return $PSO
    }

}

