#
# Identity Security Cloud V3 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

An object referencing an SOD violation check

.PARAMETER RequestId
The id of the original request
.OUTPUTS

SodViolationCheck<PSCustomObject>
#>

function Initialize-SodViolationCheck {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${RequestId}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => SodViolationCheck' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$RequestId) {
            throw "invalid value for 'RequestId', 'RequestId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "requestId" = ${RequestId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SodViolationCheck<PSCustomObject>

.DESCRIPTION

Convert from JSON to SodViolationCheck<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SodViolationCheck<PSCustomObject>
#>
function ConvertFrom-JsonToSodViolationCheck {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => SodViolationCheck' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SodViolationCheck
        $AllProperties = ("requestId", "created")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'requestId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'requestId' missing."
        } else {
            $RequestId = $JsonParameters.PSobject.Properties["requestId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        $PSO = [PSCustomObject]@{
            "requestId" = ${RequestId}
            "created" = ${Created}
        }

        return $PSO
    }

}

