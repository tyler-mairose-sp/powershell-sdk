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

The rule's function signature. Describes the rule's input arguments and output (if any)

.PARAMETER VarInput
No description available.
.PARAMETER Output
No description available.
.OUTPUTS

ConnectorRuleCreateRequestSignature<PSCustomObject>
#>

function Initialize-V2024ConnectorRuleCreateRequestSignature {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VarInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Output}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ConnectorRuleCreateRequestSignature' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$VarInput) {
            throw "invalid value for 'VarInput', 'VarInput' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "input" = ${VarInput}
            "output" = ${Output}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConnectorRuleCreateRequestSignature<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConnectorRuleCreateRequestSignature<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConnectorRuleCreateRequestSignature<PSCustomObject>
#>
function ConvertFrom-V2024JsonToConnectorRuleCreateRequestSignature {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ConnectorRuleCreateRequestSignature' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ConnectorRuleCreateRequestSignature
        $AllProperties = ("input", "output")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'input' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "input"))) {
            throw "Error! JSON cannot be serialized due to the required property 'input' missing."
        } else {
            $VarInput = $JsonParameters.PSobject.Properties["input"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "output"))) { #optional property not found
            $Output = $null
        } else {
            $Output = $JsonParameters.PSobject.Properties["output"].value
        }

        $PSO = [PSCustomObject]@{
            "input" = ${VarInput}
            "output" = ${Output}
        }

        return $PSO
    }

}

