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

.PARAMETER Key
No description available.
.PARAMETER Medium
No description available.
.PARAMETER Locale
The locale for the message text, a BCP 47 language tag.
.OUTPUTS

TemplateBulkDeleteDto<PSCustomObject>
#>

function Initialize-V2024TemplateBulkDeleteDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL", "PHONE", "SMS")]
        [String]
        ${Medium},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024TemplateBulkDeleteDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Key) {
            throw "invalid value for 'Key', 'Key' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "medium" = ${Medium}
            "locale" = ${Locale}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateBulkDeleteDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateBulkDeleteDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateBulkDeleteDto<PSCustomObject>
#>
function ConvertFrom-V2024JsonToTemplateBulkDeleteDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024TemplateBulkDeleteDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024TemplateBulkDeleteDto
        $AllProperties = ("key", "medium", "locale")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'key' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) {
            throw "Error! JSON cannot be serialized due to the required property 'key' missing."
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "medium"))) { #optional property not found
            $Medium = $null
        } else {
            $Medium = $JsonParameters.PSobject.Properties["medium"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) { #optional property not found
            $Locale = $null
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "medium" = ${Medium}
            "locale" = ${Locale}
        }

        return $PSO
    }

}

