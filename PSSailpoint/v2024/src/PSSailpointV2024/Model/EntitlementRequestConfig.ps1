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

.PARAMETER AccessRequestConfig
No description available.
.OUTPUTS

EntitlementRequestConfig<PSCustomObject>
#>

function Initialize-V2024EntitlementRequestConfig {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccessRequestConfig}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024EntitlementRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "accessRequestConfig" = ${AccessRequestConfig}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EntitlementRequestConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to EntitlementRequestConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EntitlementRequestConfig<PSCustomObject>
#>
function ConvertFrom-V2024JsonToEntitlementRequestConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024EntitlementRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024EntitlementRequestConfig
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

