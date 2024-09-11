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

.PARAMETER Enabled
If the profile or mapping is enabled
.PARAMETER AttributeTransforms
No description available.
.OUTPUTS

IdentityAttributeConfig<PSCustomObject>
#>

function Initialize-BetaIdentityAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AttributeTransforms}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaIdentityAttributeConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "attributeTransforms" = ${AttributeTransforms}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityAttributeConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityAttributeConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityAttributeConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityAttributeConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaIdentityAttributeConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityAttributeConfig
        $AllProperties = ("enabled", "attributeTransforms")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributeTransforms"))) { #optional property not found
            $AttributeTransforms = $null
        } else {
            $AttributeTransforms = $JsonParameters.PSobject.Properties["attributeTransforms"].value
        }

        $PSO = [PSCustomObject]@{
            "enabled" = ${Enabled}
            "attributeTransforms" = ${AttributeTransforms}
        }

        return $PSO
    }

}

