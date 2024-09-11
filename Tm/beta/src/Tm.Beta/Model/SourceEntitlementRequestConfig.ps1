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

Entitlement Request Configuration

.PARAMETER AccessRequestConfig
No description available.
.OUTPUTS

SourceEntitlementRequestConfig<PSCustomObject>
#>

function Initialize-BetaSourceEntitlementRequestConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessRequestConfig}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaSourceEntitlementRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessRequestConfig" = ${AccessRequestConfig}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceEntitlementRequestConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceEntitlementRequestConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceEntitlementRequestConfig<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSourceEntitlementRequestConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaSourceEntitlementRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSourceEntitlementRequestConfig
        $AllProperties = ("accessRequestConfig")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessRequestConfig"))) { #optional property not found
            $AccessRequestConfig = $null
        } else {
            $AccessRequestConfig = $JsonParameters.PSobject.Properties["accessRequestConfig"].value
        }

        $PSO = [PSCustomObject]@{
            "accessRequestConfig" = ${AccessRequestConfig}
        }

        return $PSO
    }

}

