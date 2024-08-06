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

Used to map an attribute key for an Identity to its display name.

.PARAMETER Key
The attribute key
.PARAMETER Name
The attribute display name
.OUTPUTS

PublicIdentityAttributeConfig<PSCustomObject>
#>

function Initialize-V2024PublicIdentityAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024PublicIdentityAttributeConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PublicIdentityAttributeConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to PublicIdentityAttributeConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PublicIdentityAttributeConfig<PSCustomObject>
#>
function ConvertFrom-V2024JsonToPublicIdentityAttributeConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024PublicIdentityAttributeConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024PublicIdentityAttributeConfig
        $AllProperties = ("key", "name")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
        }

        return $PSO
    }

}

