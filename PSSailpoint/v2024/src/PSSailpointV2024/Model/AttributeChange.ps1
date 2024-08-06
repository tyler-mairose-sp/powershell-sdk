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

.PARAMETER Name
the attribute name
.PARAMETER PreviousValue
the old value of attribute
.PARAMETER NewValue
the new value of attribute
.OUTPUTS

AttributeChange<PSCustomObject>
#>

function Initialize-V2024AttributeChange {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PreviousValue},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NewValue}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024AttributeChange' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "previousValue" = ${PreviousValue}
            "newValue" = ${NewValue}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttributeChange<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttributeChange<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttributeChange<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAttributeChange {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024AttributeChange' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024AttributeChange
        $AllProperties = ("name", "previousValue", "newValue")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "previousValue"))) { #optional property not found
            $PreviousValue = $null
        } else {
            $PreviousValue = $JsonParameters.PSobject.Properties["previousValue"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "newValue"))) { #optional property not found
            $NewValue = $null
        } else {
            $NewValue = $JsonParameters.PSobject.Properties["newValue"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "previousValue" = ${PreviousValue}
            "newValue" = ${NewValue}
        }

        return $PSO
    }

}

