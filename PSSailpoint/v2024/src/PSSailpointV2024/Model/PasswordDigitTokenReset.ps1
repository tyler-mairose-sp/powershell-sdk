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

.PARAMETER UserId
The uid of the user requested for digit token
.PARAMETER Length
The length of digit token. It should be from 6 to 18, inclusive. The default value is 6.
.PARAMETER DurationMinutes
The time to live for the digit token in minutes. The default value is 5 minutes.
.OUTPUTS

PasswordDigitTokenReset<PSCustomObject>
#>

function Initialize-V2024PasswordDigitTokenReset {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Length},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${DurationMinutes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024PasswordDigitTokenReset' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$UserId) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "userId" = ${UserId}
            "length" = ${Length}
            "durationMinutes" = ${DurationMinutes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PasswordDigitTokenReset<PSCustomObject>

.DESCRIPTION

Convert from JSON to PasswordDigitTokenReset<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PasswordDigitTokenReset<PSCustomObject>
#>
function ConvertFrom-V2024JsonToPasswordDigitTokenReset {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024PasswordDigitTokenReset' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024PasswordDigitTokenReset
        $AllProperties = ("userId", "length", "durationMinutes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'userId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "length"))) { #optional property not found
            $Length = $null
        } else {
            $Length = $JsonParameters.PSobject.Properties["length"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "durationMinutes"))) { #optional property not found
            $DurationMinutes = $null
        } else {
            $DurationMinutes = $JsonParameters.PSobject.Properties["durationMinutes"].value
        }

        $PSO = [PSCustomObject]@{
            "userId" = ${UserId}
            "length" = ${Length}
            "durationMinutes" = ${DurationMinutes}
        }

        return $PSO
    }

}

