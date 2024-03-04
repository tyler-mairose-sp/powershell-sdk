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

No description available.

.PARAMETER Comment
Comment on the approval item.
.OUTPUTS

NonEmployeeApprovalDecision<PSCustomObject>
#>

function Initialize-NonEmployeeApprovalDecision {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => NonEmployeeApprovalDecision' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Comment -and $Comment.length -gt 4000) {
            throw "invalid value for 'Comment', the character length must be smaller than or equal to 4000."
        }


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeApprovalDecision<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeApprovalDecision<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeApprovalDecision<PSCustomObject>
#>
function ConvertFrom-JsonToNonEmployeeApprovalDecision {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => NonEmployeeApprovalDecision' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in NonEmployeeApprovalDecision
        $AllProperties = ("comment")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
        }

        return $PSO
    }

}

