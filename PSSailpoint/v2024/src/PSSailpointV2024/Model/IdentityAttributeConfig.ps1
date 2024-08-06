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

Defines all the identity attribute mapping configurations. This defines how to generate or collect data for each identity attributes in identity refresh process.

.PARAMETER Enabled
The backend will only promote values if the profile/mapping is enabled.
.PARAMETER AttributeTransforms
No description available.
.OUTPUTS

IdentityAttributeConfig<PSCustomObject>
#>

function Initialize-V2024IdentityAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${AttributeTransforms}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024IdentityAttributeConfig' | Write-Debug
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
function ConvertFrom-V2024JsonToIdentityAttributeConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024IdentityAttributeConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024IdentityAttributeConfig
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

