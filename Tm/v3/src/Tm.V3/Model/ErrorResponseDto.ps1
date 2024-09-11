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

No description available.

.PARAMETER DetailCode
Fine-grained error code providing more detail of the error.
.PARAMETER TrackingId
Unique tracking id for the error.
.PARAMETER Messages
Generic localized reason for error
.PARAMETER Causes
Plain-text descriptive reasons to provide additional detail to the text provided in the messages field
.OUTPUTS

ErrorResponseDto<PSCustomObject>
#>

function Initialize-ErrorResponseDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DetailCode},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TrackingId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Messages},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Causes}
    )

    Process {
        'Creating PSCustomObject: Tm.V3 => ErrorResponseDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "detailCode" = ${DetailCode}
            "trackingId" = ${TrackingId}
            "messages" = ${Messages}
            "causes" = ${Causes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ErrorResponseDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ErrorResponseDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ErrorResponseDto<PSCustomObject>
#>
function ConvertFrom-JsonToErrorResponseDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V3 => ErrorResponseDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ErrorResponseDto
        $AllProperties = ("detailCode", "trackingId", "messages", "causes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "detailCode"))) { #optional property not found
            $DetailCode = $null
        } else {
            $DetailCode = $JsonParameters.PSobject.Properties["detailCode"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "trackingId"))) { #optional property not found
            $TrackingId = $null
        } else {
            $TrackingId = $JsonParameters.PSobject.Properties["trackingId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "messages"))) { #optional property not found
            $Messages = $null
        } else {
            $Messages = $JsonParameters.PSobject.Properties["messages"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "causes"))) { #optional property not found
            $Causes = $null
        } else {
            $Causes = $JsonParameters.PSobject.Properties["causes"].value
        }

        $PSO = [PSCustomObject]@{
            "detailCode" = ${DetailCode}
            "trackingId" = ${TrackingId}
            "messages" = ${Messages}
            "causes" = ${Causes}
        }

        return $PSO
    }

}

