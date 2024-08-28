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

.PARAMETER SourceType
Defines the type of object being selected. It will be either a reference to a form input (by input name) or a form element (by technical key). INPUT ConditionRuleSourceTypeInput ELEMENT ConditionRuleSourceTypeElement
.PARAMETER Source
Source - if the sourceType is ConditionRuleSourceTypeInput, the source type is the name of the form input to accept. However, if the sourceType is ConditionRuleSourceTypeElement, the source is the name of a technical key of an element to retrieve its value.
.PARAMETER Operator
ConditionRuleComparisonOperatorType value. EQ ConditionRuleComparisonOperatorTypeEquals  This comparison operator compares the source and target for equality. NE ConditionRuleComparisonOperatorTypeNotEquals  This comparison operator compares the source and target for inequality. CO ConditionRuleComparisonOperatorTypeContains  This comparison operator searches the source to see whether it contains the value. NOT_CO ConditionRuleComparisonOperatorTypeNotContains IN ConditionRuleComparisonOperatorTypeIncludes  This comparison operator searches the source if it equals any of the values. NOT_IN ConditionRuleComparisonOperatorTypeNotIncludes EM ConditionRuleComparisonOperatorTypeEmpty NOT_EM ConditionRuleComparisonOperatorTypeNotEmpty SW ConditionRuleComparisonOperatorTypeStartsWith  Checks whether a string starts with another substring of the same string. This operator is case-sensitive. NOT_SW ConditionRuleComparisonOperatorTypeNotStartsWith EW ConditionRuleComparisonOperatorTypeEndsWith  Checks whether a string ends with another substring of the same string. This operator is case-sensitive. NOT_EW ConditionRuleComparisonOperatorTypeNotEndsWith
.PARAMETER ValueType
ConditionRuleValueType type. STRING ConditionRuleValueTypeString  This value is a static string. STRING_LIST ConditionRuleValueTypeStringList  This value is an array of string values. INPUT ConditionRuleValueTypeInput  This value is a reference to a form input. ELEMENT ConditionRuleValueTypeElement  This value is a reference to a form element (by technical key). LIST ConditionRuleValueTypeList BOOLEAN ConditionRuleValueTypeBoolean
.PARAMETER Value
Based on the ValueType.
.OUTPUTS

ConditionRule<PSCustomObject>
#>

function Initialize-V2024ConditionRule {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("INPUT", "ELEMENT")]
        [String]
        ${SourceType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Source},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EQ", "NE", "CO", "NOT_CO", "IN", "NOT_IN", "EM", "NOT_EM", "SW", "NOT_SW", "EW", "NOT_EW")]
        [String]
        ${Operator},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STRING", "STRING_LIST", "INPUT", "ELEMENT", "LIST", "BOOLEAN")]
        [String]
        ${ValueType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ConditionRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "sourceType" = ${SourceType}
            "source" = ${Source}
            "operator" = ${Operator}
            "valueType" = ${ValueType}
            "value" = ${Value}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConditionRule<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConditionRule<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConditionRule<PSCustomObject>
#>
function ConvertFrom-V2024JsonToConditionRule {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ConditionRule' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ConditionRule
        $AllProperties = ("sourceType", "source", "operator", "valueType", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceType"))) { #optional property not found
            $SourceType = $null
        } else {
            $SourceType = $JsonParameters.PSobject.Properties["sourceType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) { #optional property not found
            $Source = $null
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operator"))) { #optional property not found
            $Operator = $null
        } else {
            $Operator = $JsonParameters.PSobject.Properties["operator"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "valueType"))) { #optional property not found
            $ValueType = $null
        } else {
            $ValueType = $JsonParameters.PSobject.Properties["valueType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "sourceType" = ${SourceType}
            "source" = ${Source}
            "operator" = ${Operator}
            "valueType" = ${ValueType}
            "value" = ${Value}
        }

        return $PSO
    }

}

