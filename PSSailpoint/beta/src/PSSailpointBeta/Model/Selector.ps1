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

.PARAMETER ApplicationId
The application id
.PARAMETER AccountMatchConfig
No description available.
.OUTPUTS

Selector<PSCustomObject>
#>

function Initialize-BetaSelector {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${AccountMatchConfig}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSelector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "applicationId" = ${ApplicationId}
            "accountMatchConfig" = ${AccountMatchConfig}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Selector<PSCustomObject>

.DESCRIPTION

Convert from JSON to Selector<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Selector<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSelector {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSelector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSelector
        $AllProperties = ("applicationId", "accountMatchConfig")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationId"))) { #optional property not found
            $ApplicationId = $null
        } else {
            $ApplicationId = $JsonParameters.PSobject.Properties["applicationId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountMatchConfig"))) { #optional property not found
            $AccountMatchConfig = $null
        } else {
            $AccountMatchConfig = $JsonParameters.PSobject.Properties["accountMatchConfig"].value
        }

        $PSO = [PSCustomObject]@{
            "applicationId" = ${ApplicationId}
            "accountMatchConfig" = ${AccountMatchConfig}
        }

        return $PSO
    }

}

