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

.PARAMETER Detail
No description available.
.PARAMETER Key
No description available.
.PARAMETER Text
No description available.
.OUTPUTS

ImportFormDefinitions202ResponseErrorsInner<PSCustomObject>
#>

function Initialize-V2024ImportFormDefinitions202ResponseErrorsInner {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Detail},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024ImportFormDefinitions202ResponseErrorsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "detail" = ${Detail}
            "key" = ${Key}
            "text" = ${Text}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImportFormDefinitions202ResponseErrorsInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImportFormDefinitions202ResponseErrorsInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImportFormDefinitions202ResponseErrorsInner<PSCustomObject>
#>
function ConvertFrom-V2024JsonToImportFormDefinitions202ResponseErrorsInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024ImportFormDefinitions202ResponseErrorsInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ImportFormDefinitions202ResponseErrorsInner
        $AllProperties = ("detail", "key", "text")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "detail"))) { #optional property not found
            $Detail = $null
        } else {
            $Detail = $JsonParameters.PSobject.Properties["detail"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) { #optional property not found
            $Key = $null
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        $PSO = [PSCustomObject]@{
            "detail" = ${Detail}
            "key" = ${Key}
            "text" = ${Text}
        }

        return $PSO
    }

}

