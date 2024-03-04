#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Attributes related to a scheduled trigger

.PARAMETER CronString
A valid CRON expression
.OUTPUTS

ScheduledAttributes<PSCustomObject>
#>

function Initialize-ScheduledAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CronString}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ScheduledAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$CronString) {
            throw "invalid value for 'CronString', 'CronString' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "cronString" = ${CronString}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ScheduledAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to ScheduledAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ScheduledAttributes<PSCustomObject>
#>
function ConvertFrom-JsonToScheduledAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ScheduledAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ScheduledAttributes
        $AllProperties = ("cronString")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'cronString' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cronString"))) {
            throw "Error! JSON cannot be serialized due to the required property 'cronString' missing."
        } else {
            $CronString = $JsonParameters.PSobject.Properties["cronString"].value
        }

        $PSO = [PSCustomObject]@{
            "cronString" = ${CronString}
        }

        return $PSO
    }

}

