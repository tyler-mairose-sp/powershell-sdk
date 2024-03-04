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

.PARAMETER CreatedBy
No description available.
.PARAMETER Expire
Expire is required
.PARAMETER FormDefinitionId
FormDefinitionID is the id of the form definition that created this form
.PARAMETER FormInput
FormInput is an object of form input labels to value
.PARAMETER Recipients
Recipients is required
.PARAMETER StandAloneForm
StandAloneForm is a boolean flag to indicate if this form should be available for users to complete via the standalone form UI or should this only be available to be completed by as an embedded form
.PARAMETER State
State is required, if not present initial state is FormInstanceStateAssigned ASSIGNED FormInstanceStateAssigned IN_PROGRESS FormInstanceStateInProgress SUBMITTED FormInstanceStateSubmitted COMPLETED FormInstanceStateCompleted CANCELLED FormInstanceStateCancelled
.PARAMETER Ttl
TTL an epoch timestamp in seconds, it most be in seconds or dynamodb will ignore it SEE: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/time-to-live-ttl-before-you-start.html
.OUTPUTS

CreateFormInstanceRequest<PSCustomObject>
#>

function Initialize-BetaCreateFormInstanceRequest {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${CreatedBy},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Expire},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FormDefinitionId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${FormInput},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Recipients},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${StandAloneForm} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ASSIGNED", "IN_PROGRESS", "SUBMITTED", "COMPLETED", "CANCELLED")]
        [String]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${Ttl}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaCreateFormInstanceRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$CreatedBy) {
            throw "invalid value for 'CreatedBy', 'CreatedBy' cannot be null."
        }

        if (!$Expire) {
            throw "invalid value for 'Expire', 'Expire' cannot be null."
        }

        if (!$FormDefinitionId) {
            throw "invalid value for 'FormDefinitionId', 'FormDefinitionId' cannot be null."
        }

        if (!$Recipients) {
            throw "invalid value for 'Recipients', 'Recipients' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "createdBy" = ${CreatedBy}
            "expire" = ${Expire}
            "formDefinitionId" = ${FormDefinitionId}
            "formInput" = ${FormInput}
            "recipients" = ${Recipients}
            "standAloneForm" = ${StandAloneForm}
            "state" = ${State}
            "ttl" = ${Ttl}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to CreateFormInstanceRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to CreateFormInstanceRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

CreateFormInstanceRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToCreateFormInstanceRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaCreateFormInstanceRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaCreateFormInstanceRequest
        $AllProperties = ("createdBy", "expire", "formDefinitionId", "formInput", "recipients", "standAloneForm", "state", "ttl")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'createdBy' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdBy' missing."
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expire"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expire' missing."
        } else {
            $Expire = $JsonParameters.PSobject.Properties["expire"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formDefinitionId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'formDefinitionId' missing."
        } else {
            $FormDefinitionId = $JsonParameters.PSobject.Properties["formDefinitionId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipients"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recipients' missing."
        } else {
            $Recipients = $JsonParameters.PSobject.Properties["recipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formInput"))) { #optional property not found
            $FormInput = $null
        } else {
            $FormInput = $JsonParameters.PSobject.Properties["formInput"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "standAloneForm"))) { #optional property not found
            $StandAloneForm = $null
        } else {
            $StandAloneForm = $JsonParameters.PSobject.Properties["standAloneForm"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ttl"))) { #optional property not found
            $Ttl = $null
        } else {
            $Ttl = $JsonParameters.PSobject.Properties["ttl"].value
        }

        $PSO = [PSCustomObject]@{
            "createdBy" = ${CreatedBy}
            "expire" = ${Expire}
            "formDefinitionId" = ${FormDefinitionId}
            "formInput" = ${FormInput}
            "recipients" = ${Recipients}
            "standAloneForm" = ${StandAloneForm}
            "state" = ${State}
            "ttl" = ${Ttl}
        }

        return $PSO
    }

}

