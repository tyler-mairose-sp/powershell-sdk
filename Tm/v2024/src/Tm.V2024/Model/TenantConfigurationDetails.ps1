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

Details of any tenant-wide Reassignment Configurations (eg. enabled/disabled)

.PARAMETER Disabled
Flag to determine if Reassignment Configuration is enabled or disabled for a tenant.  When this flag is set to true, Reassignment Configuration is disabled.
.OUTPUTS

TenantConfigurationDetails<PSCustomObject>
#>

function Initialize-V2024TenantConfigurationDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Disabled} = $false
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024TenantConfigurationDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "disabled" = ${Disabled}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TenantConfigurationDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to TenantConfigurationDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TenantConfigurationDetails<PSCustomObject>
#>
function ConvertFrom-V2024JsonToTenantConfigurationDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024TenantConfigurationDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024TenantConfigurationDetails
        $AllProperties = ("disabled")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) { #optional property not found
            $Disabled = $null
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        $PSO = [PSCustomObject]@{
            "disabled" = ${Disabled}
        }

        return $PSO
    }

}

