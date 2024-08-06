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

.PARAMETER Locale
Locale is the current Locale
.PARAMETER LocaleOrigin
LocaleOrigin holds possible values of how the locale was selected
.PARAMETER Text
Text is the actual text of the error message
.OUTPUTS

ErrorMessage<PSCustomObject>
#>

function Initialize-V2024ErrorMessage {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LocaleOrigin},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024ErrorMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "locale" = ${Locale}
            "localeOrigin" = ${LocaleOrigin}
            "text" = ${Text}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ErrorMessage<PSCustomObject>

.DESCRIPTION

Convert from JSON to ErrorMessage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ErrorMessage<PSCustomObject>
#>
function ConvertFrom-V2024JsonToErrorMessage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024ErrorMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024ErrorMessage
        $AllProperties = ("locale", "localeOrigin", "text")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "localeOrigin"))) { #optional property not found
            $LocaleOrigin = $null
        } else {
            $LocaleOrigin = $JsonParameters.PSobject.Properties["localeOrigin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        $PSO = [PSCustomObject]@{
            "locale" = ${Locale}
            "localeOrigin" = ${LocaleOrigin}
            "text" = ${Text}
        }

        return $PSO
    }

}

