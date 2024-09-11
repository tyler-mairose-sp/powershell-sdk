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

.PARAMETER Id
Non-Employee approval item id
.PARAMETER Approver
No description available.
.PARAMETER AccountName
Requested identity account name
.PARAMETER ApprovalStatus
No description available.
.PARAMETER ApprovalOrder
Approval order
.PARAMETER Comment
comment of approver
.PARAMETER Modified
When the request was last modified.
.PARAMETER Created
When the request was created.
.PARAMETER NonEmployeeRequest
No description available.
.OUTPUTS

NonEmployeeApprovalItem<PSCustomObject>
#>

function Initialize-V2024NonEmployeeApprovalItem {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Approver},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("APPROVED", "REJECTED", "PENDING", "NOT_READY", "CANCELLED")]
        [PSCustomObject]
        ${ApprovalStatus},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${ApprovalOrder},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${NonEmployeeRequest}
    )

    Process {
        'Creating PSCustomObject: Tm.V2024 => V2024NonEmployeeApprovalItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "approver" = ${Approver}
            "accountName" = ${AccountName}
            "approvalStatus" = ${ApprovalStatus}
            "approvalOrder" = ${ApprovalOrder}
            "comment" = ${Comment}
            "modified" = ${Modified}
            "created" = ${Created}
            "nonEmployeeRequest" = ${NonEmployeeRequest}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeApprovalItem<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeApprovalItem<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeApprovalItem<PSCustomObject>
#>
function ConvertFrom-V2024JsonToNonEmployeeApprovalItem {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: Tm.V2024 => V2024NonEmployeeApprovalItem' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024NonEmployeeApprovalItem
        $AllProperties = ("id", "approver", "accountName", "approvalStatus", "approvalOrder", "comment", "modified", "created", "nonEmployeeRequest")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approver"))) { #optional property not found
            $Approver = $null
        } else {
            $Approver = $JsonParameters.PSobject.Properties["approver"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountName"))) { #optional property not found
            $AccountName = $null
        } else {
            $AccountName = $JsonParameters.PSobject.Properties["accountName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalStatus"))) { #optional property not found
            $ApprovalStatus = $null
        } else {
            $ApprovalStatus = $JsonParameters.PSobject.Properties["approvalStatus"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "approvalOrder"))) { #optional property not found
            $ApprovalOrder = $null
        } else {
            $ApprovalOrder = $JsonParameters.PSobject.Properties["approvalOrder"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nonEmployeeRequest"))) { #optional property not found
            $NonEmployeeRequest = $null
        } else {
            $NonEmployeeRequest = $JsonParameters.PSobject.Properties["nonEmployeeRequest"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "approver" = ${Approver}
            "accountName" = ${AccountName}
            "approvalStatus" = ${ApprovalStatus}
            "approvalOrder" = ${ApprovalOrder}
            "comment" = ${Comment}
            "modified" = ${Modified}
            "created" = ${Created}
            "nonEmployeeRequest" = ${NonEmployeeRequest}
        }

        return $PSO
    }

}

