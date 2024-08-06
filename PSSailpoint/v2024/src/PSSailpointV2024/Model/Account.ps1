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

.PARAMETER Name
Name of the Object
.PARAMETER SourceId
The unique ID of the source this account belongs to
.PARAMETER SourceName
The display name of the source this account belongs to
.PARAMETER IdentityId
The unique ID of the identity this account is correlated to
.PARAMETER CloudLifecycleState
The lifecycle state of the identity this account is correlated to
.PARAMETER IdentityState
The identity state of the identity this account is correlated to
.PARAMETER ConnectionType
The connection type of the source this account is from
.PARAMETER Type
The type of the account
.PARAMETER Attributes
The account attributes that are aggregated
.PARAMETER Authoritative
Indicates if this account is from an authoritative source
.PARAMETER Description
A description of the account
.PARAMETER Disabled
Indicates if the account is currently disabled
.PARAMETER Locked
Indicates if the account is currently locked
.PARAMETER NativeIdentity
The unique ID of the account generated by the source system
.PARAMETER SystemAccount
If true, this is a user account within IdentityNow.  If false, this is an account from a source system.
.PARAMETER Uncorrelated
Indicates if this account is not correlated to an identity
.PARAMETER Uuid
The unique ID of the account as determined by the account schema
.PARAMETER ManuallyCorrelated
Indicates if the account has been manually correlated to an identity
.PARAMETER HasEntitlements
Indicates if the account has entitlements
.PARAMETER Identity
No description available.
.PARAMETER SourceOwner
No description available.
.PARAMETER Features
A string list containing the owning source's features
.PARAMETER Origin
The origin of the account either aggregated or provisioned
.PARAMETER OwnerIdentity
No description available.
.PARAMETER OwnerGroup
No description available.
.OUTPUTS

Account<PSCustomObject>
#>

function Initialize-V2024Account {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CloudLifecycleState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityState},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ConnectionType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Authoritative},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Disabled},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Locked},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NativeIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${SystemAccount},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Uncorrelated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${ManuallyCorrelated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${HasEntitlements},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Identity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SourceOwner},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Features},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("AGGREGATED", "PROVISIONED", "")]
        [String]
        ${Origin},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OwnerIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OwnerGroup}
    )

    Process {
        'Creating PSCustomObject: PSSailpointV2024 => V2024Account' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$SourceId) {
            throw "invalid value for 'SourceId', 'SourceId' cannot be null."
        }

        if (!$SourceName) {
            throw "invalid value for 'SourceName', 'SourceName' cannot be null."
        }

        if (!$Authoritative) {
            throw "invalid value for 'Authoritative', 'Authoritative' cannot be null."
        }

        if (!$Disabled) {
            throw "invalid value for 'Disabled', 'Disabled' cannot be null."
        }

        if (!$Locked) {
            throw "invalid value for 'Locked', 'Locked' cannot be null."
        }

        if (!$NativeIdentity) {
            throw "invalid value for 'NativeIdentity', 'NativeIdentity' cannot be null."
        }

        if (!$SystemAccount) {
            throw "invalid value for 'SystemAccount', 'SystemAccount' cannot be null."
        }

        if (!$Uncorrelated) {
            throw "invalid value for 'Uncorrelated', 'Uncorrelated' cannot be null."
        }

        if (!$ManuallyCorrelated) {
            throw "invalid value for 'ManuallyCorrelated', 'ManuallyCorrelated' cannot be null."
        }

        if (!$HasEntitlements) {
            throw "invalid value for 'HasEntitlements', 'HasEntitlements' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "identityId" = ${IdentityId}
            "cloudLifecycleState" = ${CloudLifecycleState}
            "identityState" = ${IdentityState}
            "connectionType" = ${ConnectionType}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "authoritative" = ${Authoritative}
            "description" = ${Description}
            "disabled" = ${Disabled}
            "locked" = ${Locked}
            "nativeIdentity" = ${NativeIdentity}
            "systemAccount" = ${SystemAccount}
            "uncorrelated" = ${Uncorrelated}
            "uuid" = ${Uuid}
            "manuallyCorrelated" = ${ManuallyCorrelated}
            "hasEntitlements" = ${HasEntitlements}
            "identity" = ${Identity}
            "sourceOwner" = ${SourceOwner}
            "features" = ${Features}
            "origin" = ${Origin}
            "ownerIdentity" = ${OwnerIdentity}
            "ownerGroup" = ${OwnerGroup}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Account<PSCustomObject>

.DESCRIPTION

Convert from JSON to Account<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Account<PSCustomObject>
#>
function ConvertFrom-V2024JsonToAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointV2024 => V2024Account' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Account
        $AllProperties = ("id", "name", "created", "modified", "sourceId", "sourceName", "identityId", "cloudLifecycleState", "identityState", "connectionType", "type", "attributes", "authoritative", "description", "disabled", "locked", "nativeIdentity", "systemAccount", "uncorrelated", "uuid", "manuallyCorrelated", "hasEntitlements", "identity", "sourceOwner", "features", "origin", "ownerIdentity", "ownerGroup")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceId' missing."
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceName"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sourceName' missing."
        } else {
            $SourceName = $JsonParameters.PSobject.Properties["sourceName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attributes' missing."
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "authoritative"))) {
            throw "Error! JSON cannot be serialized due to the required property 'authoritative' missing."
        } else {
            $Authoritative = $JsonParameters.PSobject.Properties["authoritative"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "disabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'disabled' missing."
        } else {
            $Disabled = $JsonParameters.PSobject.Properties["disabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locked"))) {
            throw "Error! JSON cannot be serialized due to the required property 'locked' missing."
        } else {
            $Locked = $JsonParameters.PSobject.Properties["locked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'nativeIdentity' missing."
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "systemAccount"))) {
            throw "Error! JSON cannot be serialized due to the required property 'systemAccount' missing."
        } else {
            $SystemAccount = $JsonParameters.PSobject.Properties["systemAccount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uncorrelated"))) {
            throw "Error! JSON cannot be serialized due to the required property 'uncorrelated' missing."
        } else {
            $Uncorrelated = $JsonParameters.PSobject.Properties["uncorrelated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manuallyCorrelated"))) {
            throw "Error! JSON cannot be serialized due to the required property 'manuallyCorrelated' missing."
        } else {
            $ManuallyCorrelated = $JsonParameters.PSobject.Properties["manuallyCorrelated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasEntitlements"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hasEntitlements' missing."
        } else {
            $HasEntitlements = $JsonParameters.PSobject.Properties["hasEntitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cloudLifecycleState"))) { #optional property not found
            $CloudLifecycleState = $null
        } else {
            $CloudLifecycleState = $JsonParameters.PSobject.Properties["cloudLifecycleState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityState"))) { #optional property not found
            $IdentityState = $null
        } else {
            $IdentityState = $JsonParameters.PSobject.Properties["identityState"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectionType"))) { #optional property not found
            $ConnectionType = $null
        } else {
            $ConnectionType = $JsonParameters.PSobject.Properties["connectionType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identity"))) { #optional property not found
            $Identity = $null
        } else {
            $Identity = $JsonParameters.PSobject.Properties["identity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceOwner"))) { #optional property not found
            $SourceOwner = $null
        } else {
            $SourceOwner = $JsonParameters.PSobject.Properties["sourceOwner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "features"))) { #optional property not found
            $Features = $null
        } else {
            $Features = $JsonParameters.PSobject.Properties["features"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "origin"))) { #optional property not found
            $Origin = $null
        } else {
            $Origin = $JsonParameters.PSobject.Properties["origin"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerIdentity"))) { #optional property not found
            $OwnerIdentity = $null
        } else {
            $OwnerIdentity = $JsonParameters.PSobject.Properties["ownerIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerGroup"))) { #optional property not found
            $OwnerGroup = $null
        } else {
            $OwnerGroup = $JsonParameters.PSobject.Properties["ownerGroup"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "sourceId" = ${SourceId}
            "sourceName" = ${SourceName}
            "identityId" = ${IdentityId}
            "cloudLifecycleState" = ${CloudLifecycleState}
            "identityState" = ${IdentityState}
            "connectionType" = ${ConnectionType}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "authoritative" = ${Authoritative}
            "description" = ${Description}
            "disabled" = ${Disabled}
            "locked" = ${Locked}
            "nativeIdentity" = ${NativeIdentity}
            "systemAccount" = ${SystemAccount}
            "uncorrelated" = ${Uncorrelated}
            "uuid" = ${Uuid}
            "manuallyCorrelated" = ${ManuallyCorrelated}
            "hasEntitlements" = ${HasEntitlements}
            "identity" = ${Identity}
            "sourceOwner" = ${SourceOwner}
            "features" = ${Features}
            "origin" = ${Origin}
            "ownerIdentity" = ${OwnerIdentity}
            "ownerGroup" = ${OwnerGroup}
        }

        return $PSO
    }

}

