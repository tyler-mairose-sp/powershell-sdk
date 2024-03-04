#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER TriggerId
Trigger ID
.PARAMETER VarInput
Trigger input payload. Its schema is defined in the trigger definition.
.PARAMETER ContentJson
JSON map of invocation metadata
.OUTPUTS

StartInvocationInput<PSCustomObject>
#>

function Initialize-BetaStartInvocationInput {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TriggerId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarInput},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ContentJson}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaStartInvocationInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "triggerId" = ${TriggerId}
            "input" = ${VarInput}
            "contentJson" = ${ContentJson}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StartInvocationInput<PSCustomObject>

.DESCRIPTION

Convert from JSON to StartInvocationInput<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StartInvocationInput<PSCustomObject>
#>
function ConvertFrom-BetaJsonToStartInvocationInput {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaStartInvocationInput' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaStartInvocationInput
        $AllProperties = ("triggerId", "input", "contentJson")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "triggerId"))) { #optional property not found
            $TriggerId = $null
        } else {
            $TriggerId = $JsonParameters.PSobject.Properties["triggerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) { #optional property not found
            $VarInput = $null
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentJson"))) { #optional property not found
            $ContentJson = $null
        } else {
            $ContentJson = $JsonParameters.PSobject.Properties["contentJson"].value
        }

        $PSO = [PSCustomObject]@{
            "triggerId" = ${TriggerId}
            "input" = ${VarInput}
            "contentJson" = ${ContentJson}
        }

        return $PSO
    }

}

