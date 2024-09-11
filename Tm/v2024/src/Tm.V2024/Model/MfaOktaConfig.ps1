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

.PARAMETER MfaMethod
Mfa method name
.PARAMETER Enabled
If MFA method is enabled.
.PARAMETER VarHost
The server host name or IP address of the MFA provider.
.PARAMETER AccessKey
The secret key for authenticating requests to the MFA provider.
.PARAMETER IdentityAttribute
Optional. The name of the attribute for mapping IdentityNow identity to the MFA provider.
.OUTPUTS

MfaOktaConfig<PSCustomObject>
#>

function Initialize-V2024MfaOktaConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${MfaMethod},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarHost},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessKey},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityAttribute}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024MfaOktaConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "mfaMethod" = ${MfaMethod}
            "enabled" = ${Enabled}
            "host" = ${VarHost}
            "accessKey" = ${AccessKey}
            "identityAttribute" = ${IdentityAttribute}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MfaOktaConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to MfaOktaConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MfaOktaConfig<PSCustomObject>
#>
function ConvertFrom-V2024JsonToMfaOktaConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024MfaOktaConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024MfaOktaConfig
        $AllProperties = ("mfaMethod", "enabled", "host", "accessKey", "identityAttribute")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "mfaMethod"))) { #optional property not found
            $MfaMethod = $null
        } else {
            $MfaMethod = $JsonParameters.PSobject.Properties["mfaMethod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) { #optional property not found
            $Enabled = $null
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "host"))) { #optional property not found
            $VarHost = $null
        } else {
            $VarHost = $JsonParameters.PSobject.Properties["host"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessKey"))) { #optional property not found
            $AccessKey = $null
        } else {
            $AccessKey = $JsonParameters.PSobject.Properties["accessKey"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityAttribute"))) { #optional property not found
            $IdentityAttribute = $null
        } else {
            $IdentityAttribute = $JsonParameters.PSobject.Properties["identityAttribute"].value
        }

        $PSO = [PSCustomObject]@{
            "mfaMethod" = ${MfaMethod}
            "enabled" = ${Enabled}
            "host" = ${VarHost}
            "accessKey" = ${AccessKey}
            "identityAttribute" = ${IdentityAttribute}
        }

        return $PSO
    }

}

