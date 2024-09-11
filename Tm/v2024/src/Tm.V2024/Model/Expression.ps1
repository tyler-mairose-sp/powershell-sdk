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

.PARAMETER Operator
Operator for the expression
.PARAMETER Attribute
Name for the attribute
.PARAMETER Value
No description available.
.PARAMETER Children
List of expressions
.OUTPUTS

Expression<PSCustomObject>
#>

function Initialize-V2024Expression {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("AND", "EQUALS")]
        [String]
        ${Operator},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Attribute},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Value},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Children}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024Expression' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operator" = ${Operator}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "children" = ${Children}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Expression<PSCustomObject>

.DESCRIPTION

Convert from JSON to Expression<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Expression<PSCustomObject>
#>
function ConvertFrom-V2024JsonToExpression {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024Expression' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Expression
        $AllProperties = ("operator", "attribute", "value", "children")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operator"))) { #optional property not found
            $Operator = $null
        } else {
            $Operator = $JsonParameters.PSobject.Properties["operator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attribute"))) { #optional property not found
            $Attribute = $null
        } else {
            $Attribute = $JsonParameters.PSobject.Properties["attribute"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "children"))) { #optional property not found
            $Children = $null
        } else {
            $Children = $JsonParameters.PSobject.Properties["children"].value
        }

        $PSO = [PSCustomObject]@{
            "operator" = ${Operator}
            "attribute" = ${Attribute}
            "value" = ${Value}
            "children" = ${Children}
        }

        return $PSO
    }

}

