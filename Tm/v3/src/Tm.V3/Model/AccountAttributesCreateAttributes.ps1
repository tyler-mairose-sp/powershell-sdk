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

The schema attribute values for the account

.PARAMETER SourceId
Target source to create an account
.OUTPUTS

AccountAttributesCreateAttributes<PSCustomObject>
#>

function Initialize-AccountAttributesCreateAttributes {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => AccountAttributesCreateAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$SourceId) {
            throw "invalid value for 'SourceId', 'SourceId' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "sourceId" = ${SourceId}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountAttributesCreateAttributes<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountAttributesCreateAttributes<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountAttributesCreateAttributes<PSCustomObject>
#>
function ConvertFrom-JsonToAccountAttributesCreateAttributes {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => AccountAttributesCreateAttributes' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json
        $AccountAttributesCreateAttributesAdditionalProperties = @{}

        # check if Json contains properties not defined in AccountAttributesCreateAttributes
        $AllProperties = ("sourceId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            # store undefined properties in additionalProperties
            if (!($AllProperties.Contains($name))) {
                $AccountAttributesCreateAttributesAdditionalProperties[$name] = $JsonParameters.PSobject.Properties[$name].value
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'sourceId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceId' missing."
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        $PSO = [PSCustomObject]@{
            "sourceId" = ${SourceId}
            "AdditionalProperties" = $AccountAttributesCreateAttributesAdditionalProperties
        }

        return $PSO
    }

}

