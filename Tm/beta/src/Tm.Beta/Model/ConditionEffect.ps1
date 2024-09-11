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

Effect produced by a condition.

.PARAMETER EffectType
Type of effect to perform when the conditions are evaluated for this logic block. HIDE ConditionEffectTypeHide  Disables validations. SHOW ConditionEffectTypeShow  Enables validations. DISABLE ConditionEffectTypeDisable  Disables validations. ENABLE ConditionEffectTypeEnable  Enables validations. REQUIRE ConditionEffectTypeRequire OPTIONAL ConditionEffectTypeOptional SUBMIT_MESSAGE ConditionEffectTypeSubmitMessage SUBMIT_NOTIFICATION ConditionEffectTypeSubmitNotification SET_DEFAULT_VALUE ConditionEffectTypeSetDefaultValue  This value is ignored on purpose.
.PARAMETER Config
No description available.
.OUTPUTS

ConditionEffect<PSCustomObject>
#>

function Initialize-BetaConditionEffect {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("HIDE", "SHOW", "DISABLE", "ENABLE", "REQUIRE", "OPTIONAL", "SUBMIT_MESSAGE", "SUBMIT_NOTIFICATION", "SET_DEFAULT_VALUE")]
        [String]
        ${EffectType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Config}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaConditionEffect' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "effectType" = ${EffectType}
            "config" = ${Config}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConditionEffect<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConditionEffect<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConditionEffect<PSCustomObject>
#>
function ConvertFrom-BetaJsonToConditionEffect {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaConditionEffect' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaConditionEffect
        $AllProperties = ("effectType", "config")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "effectType"))) { #optional property not found
            $EffectType = $null
        } else {
            $EffectType = $JsonParameters.PSobject.Properties["effectType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "config"))) { #optional property not found
            $Config = $null
        } else {
            $Config = $JsonParameters.PSobject.Properties["config"].value
        }

        $PSO = [PSCustomObject]@{
            "effectType" = ${EffectType}
            "config" = ${Config}
        }

        return $PSO
    }

}

