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

The response body of a Reassignment Configuration for a single identity

.PARAMETER Identity
No description available.
.PARAMETER ConfigDetails
Details of how work should be reassigned for an Identity
.OUTPUTS

ConfigurationResponse<PSCustomObject>
#>

function Initialize-V2024ConfigurationResponse {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ConfigDetails}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ConfigurationResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "configDetails" = ${ConfigDetails}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConfigurationResponse<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConfigurationResponse<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConfigurationResponse<PSCustomObject>
#>
function ConvertFrom-V2024JsonToConfigurationResponse {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ConfigurationResponse' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ConfigurationResponse
        $AllProperties = ("identity", "configDetails")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configDetails"))) { #optional property not found
            $ConfigDetails = $null
        } else {
            $ConfigDetails = $JsonParameters.PSobject.Properties["configDetails"].value
        }

        $PSO = [PSCustomObject]@{
            "identity" = ${Identity}
            "configDetails" = ${ConfigDetails}
        }

        return $PSO
    }

}

