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

Defines STANDARD type Role membership

.PARAMETER Operation
No description available.
.PARAMETER Key
No description available.
.PARAMETER StringValue
String value to test the Identity attribute, Account attribute, or Entitlement specified in the key w/r/t the specified operation. If this criteria is a leaf node, that is, if the operation is one of EQUALS, NOT_EQUALS, CONTAINS, STARTS_WITH, or ENDS_WITH, this field is required. Otherwise, specifying it is an error.
.PARAMETER Children
Array of child criteria. Required if the operation is AND or OR, otherwise it must be left null. A maximum of three levels of criteria are supported, including leaf nodes. Additionally, AND nodes can only be children or OR nodes and vice-versa.
.OUTPUTS

RoleCriteriaLevel1<PSCustomObject>
#>

function Initialize-V2024RoleCriteriaLevel1 {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EQUALS", "NOT_EQUALS", "CONTAINS", "STARTS_WITH", "ENDS_WITH", "AND", "OR")]
        [PSCustomObject]
        ${Operation},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${StringValue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Children}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024RoleCriteriaLevel1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "operation" = ${Operation}
            "key" = ${Key}
            "stringValue" = ${StringValue}
            "children" = ${Children}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RoleCriteriaLevel1<PSCustomObject>

.DESCRIPTION

Convert from JSON to RoleCriteriaLevel1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RoleCriteriaLevel1<PSCustomObject>
#>
function ConvertFrom-V2024JsonToRoleCriteriaLevel1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024RoleCriteriaLevel1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024RoleCriteriaLevel1
        $AllProperties = ("operation", "key", "stringValue", "children")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "operation"))) { #optional property not found
            $Operation = $null
        } else {
            $Operation = $JsonParameters.PSobject.Properties["operation"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "stringValue"))) { #optional property not found
            $StringValue = $null
        } else {
            $StringValue = $JsonParameters.PSobject.Properties["stringValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "children"))) { #optional property not found
            $Children = $null
        } else {
            $Children = $JsonParameters.PSobject.Properties["children"].value
        }

        $PSO = [PSCustomObject]@{
            "operation" = ${Operation}
            "key" = ${Key}
            "stringValue" = ${StringValue}
            "children" = ${Children}
        }

        return $PSO
    }

}

