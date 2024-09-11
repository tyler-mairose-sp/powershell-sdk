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

.PARAMETER IdentityId
No description available.
.PARAMETER IdentityAttributeConfig
No description available.
.OUTPUTS

IdentityPreviewRequest<PSCustomObject>
#>

function Initialize-BetaIdentityPreviewRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${IdentityAttributeConfig}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaIdentityPreviewRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "identityAttributeConfig" = ${IdentityAttributeConfig}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityPreviewRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityPreviewRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityPreviewRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityPreviewRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaIdentityPreviewRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityPreviewRequest
        $AllProperties = ("identityId", "identityAttributeConfig")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttributeConfig"))) { #optional property not found
            $IdentityAttributeConfig = $null
        } else {
            $IdentityAttributeConfig = $JsonParameters.PSobject.Properties["identityAttributeConfig"].value
        }

        $PSO = [PSCustomObject]@{
            "identityId" = ${IdentityId}
            "identityAttributeConfig" = ${IdentityAttributeConfig}
        }

        return $PSO
    }

}

