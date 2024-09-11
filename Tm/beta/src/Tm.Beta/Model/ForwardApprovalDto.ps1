#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER NewOwnerId
The Id of the new owner
.PARAMETER Comment
The comment provided by the forwarder
.OUTPUTS

ForwardApprovalDto<PSCustomObject>
#>

function Initialize-BetaForwardApprovalDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NewOwnerId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment}
    )

    Process {
        'Creating PSCustomObject: Tm.Beta => BetaForwardApprovalDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$NewOwnerId) {
            throw "invalid value for 'NewOwnerId', 'NewOwnerId' cannot be null."
        }

        if ($NewOwnerId.length -gt 255) {
            throw "invalid value for 'NewOwnerId', the character length must be smaller than or equal to 255."
        }

        if ($NewOwnerId.length -lt 1) {
            throw "invalid value for 'NewOwnerId', the character length must be great than or equal to 1."
        }

        if (!$Comment) {
            throw "invalid value for 'Comment', 'Comment' cannot be null."
        }

        if ($Comment.length -gt 255) {
            throw "invalid value for 'Comment', the character length must be smaller than or equal to 255."
        }

        if ($Comment.length -lt 1) {
            throw "invalid value for 'Comment', the character length must be great than or equal to 1."
        }


        $PSO = [PSCustomObject]@{
            "newOwnerId" = ${NewOwnerId}
            "comment" = ${Comment}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ForwardApprovalDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ForwardApprovalDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ForwardApprovalDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToForwardApprovalDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.Beta => BetaForwardApprovalDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaForwardApprovalDto
        $AllProperties = ("newOwnerId", "comment")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'newOwnerId' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "newOwnerId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'newOwnerId' missing."
        } else {
            $NewOwnerId = $JsonParameters.PSobject.Properties["newOwnerId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) {
            throw "Error! JSON cannot be serialized due to the required property 'comment' missing."
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        $PSO = [PSCustomObject]@{
            "newOwnerId" = ${NewOwnerId}
            "comment" = ${Comment}
        }

        return $PSO
    }

}

