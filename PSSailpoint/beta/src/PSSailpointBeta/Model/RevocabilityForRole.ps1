#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER CommentsRequired
Whether the requester of the containing object must provide comments justifying the request
.PARAMETER DenialCommentsRequired
Whether an approver must provide comments when denying the request
.PARAMETER ApprovalSchemes
List describing the steps in approving the revocation request
.OUTPUTS

RevocabilityForRole<PSCustomObject>
#>

function Initialize-BetaRevocabilityForRole {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${CommentsRequired} = $false,
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DenialCommentsRequired} = $false,
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${ApprovalSchemes}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaRevocabilityForRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "commentsRequired" = ${CommentsRequired}
            "denialCommentsRequired" = ${DenialCommentsRequired}
            "approvalSchemes" = ${ApprovalSchemes}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to RevocabilityForRole<PSCustomObject>

.DESCRIPTION

Convert from JSON to RevocabilityForRole<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

RevocabilityForRole<PSCustomObject>
#>
function ConvertFrom-BetaJsonToRevocabilityForRole {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaRevocabilityForRole' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaRevocabilityForRole
        $AllProperties = ("commentsRequired", "denialCommentsRequired", "approvalSchemes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "commentsRequired"))) { #optional property not found
            $CommentsRequired = $null
        } else {
            $CommentsRequired = $JsonParameters.PSobject.Properties["commentsRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "denialCommentsRequired"))) { #optional property not found
            $DenialCommentsRequired = $null
        } else {
            $DenialCommentsRequired = $JsonParameters.PSobject.Properties["denialCommentsRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalSchemes"))) { #optional property not found
            $ApprovalSchemes = $null
        } else {
            $ApprovalSchemes = $JsonParameters.PSobject.Properties["approvalSchemes"].value
        }

        $PSO = [PSCustomObject]@{
            "commentsRequired" = ${CommentsRequired}
            "denialCommentsRequired" = ${DenialCommentsRequired}
            "approvalSchemes" = ${ApprovalSchemes}
        }

        return $PSO
    }

}

