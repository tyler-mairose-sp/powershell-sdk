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

The certification campaign that was signed off on.

.PARAMETER Id
Unique ID of the certification.
.PARAMETER Name
The name of the certification.
.PARAMETER Created
The date and time the certification was created.
.PARAMETER Modified
The date and time the certification was last modified.
.PARAMETER CampaignRef
No description available.
.PARAMETER Phase
No description available.
.PARAMETER Due
The due date of the certification.
.PARAMETER Signed
The date the reviewer signed off on the certification.
.PARAMETER Reviewer
No description available.
.PARAMETER Reassignment
No description available.
.PARAMETER HasErrors
Indicates it the certification has any errors.
.PARAMETER ErrorMessage
A message indicating what the error is.
.PARAMETER Completed
Indicates if all certification decisions have been made.
.PARAMETER DecisionsMade
The number of approve/revoke/acknowledge decisions that have been made by the reviewer.
.PARAMETER DecisionsTotal
The total number of approve/revoke/acknowledge decisions for the certification.
.PARAMETER EntitiesCompleted
The number of entities (identities, access profiles, roles, etc.) for which all decisions have been made and are complete.
.PARAMETER EntitiesTotal
The total number of entities (identities, access profiles, roles, etc.) in the certification, both complete and incomplete.
.OUTPUTS

CertificationSignedOffCertification<PSCustomObject>
#>

function Initialize-BetaCertificationSignedOffCertification {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CampaignRef},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STAGED", "ACTIVE", "SIGNED")]
        [PSCustomObject]
        ${Phase},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Due},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Signed},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reviewer},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Reassignment},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${HasErrors},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ErrorMessage},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Completed},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${DecisionsMade},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${DecisionsTotal},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${EntitiesCompleted},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${EntitiesTotal}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCertificationSignedOffCertification' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if (!$CampaignRef) {
            throw "invalid value for 'CampaignRef', 'CampaignRef' cannot be null."
        }

        if (!$Phase) {
            throw "invalid value for 'Phase', 'Phase' cannot be null."
        }

        if (!$Due) {
            throw "invalid value for 'Due', 'Due' cannot be null."
        }

        if (!$Signed) {
            throw "invalid value for 'Signed', 'Signed' cannot be null."
        }

        if (!$Reviewer) {
            throw "invalid value for 'Reviewer', 'Reviewer' cannot be null."
        }

        if (!$HasErrors) {
            throw "invalid value for 'HasErrors', 'HasErrors' cannot be null."
        }

        if (!$Completed) {
            throw "invalid value for 'Completed', 'Completed' cannot be null."
        }

        if (!$DecisionsMade) {
            throw "invalid value for 'DecisionsMade', 'DecisionsMade' cannot be null."
        }

        if (!$DecisionsTotal) {
            throw "invalid value for 'DecisionsTotal', 'DecisionsTotal' cannot be null."
        }

        if (!$EntitiesCompleted) {
            throw "invalid value for 'EntitiesCompleted', 'EntitiesCompleted' cannot be null."
        }

        if (!$EntitiesTotal) {
            throw "invalid value for 'EntitiesTotal', 'EntitiesTotal' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "campaignRef" = ${CampaignRef}
            "phase" = ${Phase}
            "due" = ${Due}
            "signed" = ${Signed}
            "reviewer" = ${Reviewer}
            "reassignment" = ${Reassignment}
            "hasErrors" = ${HasErrors}
            "errorMessage" = ${ErrorMessage}
            "completed" = ${Completed}
            "decisionsMade" = ${DecisionsMade}
            "decisionsTotal" = ${DecisionsTotal}
            "entitiesCompleted" = ${EntitiesCompleted}
            "entitiesTotal" = ${EntitiesTotal}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CertificationSignedOffCertification<PSCustomObject>

.DESCRIPTION

Convert from JSON to CertificationSignedOffCertification<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CertificationSignedOffCertification<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCertificationSignedOffCertification {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCertificationSignedOffCertification' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCertificationSignedOffCertification
        $AllProperties = ("id", "name", "created", "modified", "campaignRef", "phase", "due", "signed", "reviewer", "reassignment", "hasErrors", "errorMessage", "completed", "decisionsMade", "decisionsTotal", "entitiesCompleted", "entitiesTotal")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "campaignRef"))) {
            throw "Error! JSON cannot be serialized due to the required property 'campaignRef' missing."
        } else {
            $CampaignRef = $JsonParameters.PSobject.Properties["campaignRef"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phase"))) {
            throw "Error! JSON cannot be serialized due to the required property 'phase' missing."
        } else {
            $Phase = $JsonParameters.PSobject.Properties["phase"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "due"))) {
            throw "Error! JSON cannot be serialized due to the required property 'due' missing."
        } else {
            $Due = $JsonParameters.PSobject.Properties["due"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "signed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'signed' missing."
        } else {
            $Signed = $JsonParameters.PSobject.Properties["signed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reviewer"))) {
            throw "Error! JSON cannot be serialized due to the required property 'reviewer' missing."
        } else {
            $Reviewer = $JsonParameters.PSobject.Properties["reviewer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasErrors"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hasErrors' missing."
        } else {
            $HasErrors = $JsonParameters.PSobject.Properties["hasErrors"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "completed"))) {
            throw "Error! JSON cannot be serialized due to the required property 'completed' missing."
        } else {
            $Completed = $JsonParameters.PSobject.Properties["completed"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decisionsMade"))) {
            throw "Error! JSON cannot be serialized due to the required property 'decisionsMade' missing."
        } else {
            $DecisionsMade = $JsonParameters.PSobject.Properties["decisionsMade"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "decisionsTotal"))) {
            throw "Error! JSON cannot be serialized due to the required property 'decisionsTotal' missing."
        } else {
            $DecisionsTotal = $JsonParameters.PSobject.Properties["decisionsTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitiesCompleted"))) {
            throw "Error! JSON cannot be serialized due to the required property 'entitiesCompleted' missing."
        } else {
            $EntitiesCompleted = $JsonParameters.PSobject.Properties["entitiesCompleted"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "entitiesTotal"))) {
            throw "Error! JSON cannot be serialized due to the required property 'entitiesTotal' missing."
        } else {
            $EntitiesTotal = $JsonParameters.PSobject.Properties["entitiesTotal"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignment"))) { #optional property not found
            $Reassignment = $null
        } else {
            $Reassignment = $JsonParameters.PSobject.Properties["reassignment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "errorMessage"))) { #optional property not found
            $ErrorMessage = $null
        } else {
            $ErrorMessage = $JsonParameters.PSobject.Properties["errorMessage"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "campaignRef" = ${CampaignRef}
            "phase" = ${Phase}
            "due" = ${Due}
            "signed" = ${Signed}
            "reviewer" = ${Reviewer}
            "reassignment" = ${Reassignment}
            "hasErrors" = ${HasErrors}
            "errorMessage" = ${ErrorMessage}
            "completed" = ${Completed}
            "decisionsMade" = ${DecisionsMade}
            "decisionsTotal" = ${DecisionsTotal}
            "entitiesCompleted" = ${EntitiesCompleted}
            "entitiesTotal" = ${EntitiesTotal}
        }

        return $PSO
    }

}

