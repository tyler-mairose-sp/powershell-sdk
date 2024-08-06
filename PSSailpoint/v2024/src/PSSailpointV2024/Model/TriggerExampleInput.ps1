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

An example of the JSON payload that will be sent by the trigger to the subscribed service.

.PARAMETER Json

JSON object

.OUTPUTS

TriggerExampleInput<PSCustomObject>
#>
function ConvertFrom-V2024JsonToTriggerExampleInput {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match AccessRequestDynamicApprover defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccessRequestDynamicApprover $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccessRequestDynamicApprover"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccessRequestDynamicApprover' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match AccessRequestPostApproval defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccessRequestPostApproval $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccessRequestPostApproval"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccessRequestPostApproval' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match AccessRequestPreApproval defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccessRequestPreApproval $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccessRequestPreApproval"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccessRequestPreApproval' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match AccountAggregationCompleted defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccountAggregationCompleted $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountAggregationCompleted"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountAggregationCompleted' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match AccountAttributesChanged defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccountAttributesChanged $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountAttributesChanged"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountAttributesChanged' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match AccountCorrelated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccountCorrelated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountCorrelated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountCorrelated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match AccountUncorrelated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccountUncorrelated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountUncorrelated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountUncorrelated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match AccountsCollectedForAggregation defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToAccountsCollectedForAggregation $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "AccountsCollectedForAggregation"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'AccountsCollectedForAggregation' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match CampaignActivated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToCampaignActivated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "CampaignActivated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'CampaignActivated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match CampaignEnded defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToCampaignEnded $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "CampaignEnded"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'CampaignEnded' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match CampaignGenerated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToCampaignGenerated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "CampaignGenerated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'CampaignGenerated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match CertificationSignedOff defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToCertificationSignedOff $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "CertificationSignedOff"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'CertificationSignedOff' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match IdentityAttributesChanged defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToIdentityAttributesChanged $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdentityAttributesChanged"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdentityAttributesChanged' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match IdentityCreated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToIdentityCreated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdentityCreated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdentityCreated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match IdentityDeleted defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToIdentityDeleted $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "IdentityDeleted"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'IdentityDeleted' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match ProvisioningCompleted defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToProvisioningCompleted $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ProvisioningCompleted"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ProvisioningCompleted' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match SavedSearchComplete defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSavedSearchComplete $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SavedSearchComplete"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SavedSearchComplete' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match SourceAccountCreated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSourceAccountCreated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SourceAccountCreated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SourceAccountCreated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match SourceAccountDeleted defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSourceAccountDeleted $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SourceAccountDeleted"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SourceAccountDeleted' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match SourceAccountUpdated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSourceAccountUpdated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SourceAccountUpdated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SourceAccountUpdated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match SourceCreated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSourceCreated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SourceCreated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SourceCreated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match SourceDeleted defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSourceDeleted $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SourceDeleted"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SourceDeleted' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match SourceUpdated defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToSourceUpdated $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "SourceUpdated"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'SourceUpdated' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        # try to match VAClusterStatusChangeEvent defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-V2024JsonToVAClusterStatusChangeEvent $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "VAClusterStatusChangeEvent"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'VAClusterStatusChangeEvent' defined in oneOf (V2024TriggerExampleInput). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([AccessRequestDynamicApprover, AccessRequestPostApproval, AccessRequestPreApproval, AccountAggregationCompleted, AccountAttributesChanged, AccountCorrelated, AccountUncorrelated, AccountsCollectedForAggregation, CampaignActivated, CampaignEnded, CampaignGenerated, CertificationSignedOff, IdentityAttributesChanged, IdentityCreated, IdentityDeleted, ProvisioningCompleted, SavedSearchComplete, SourceAccountCreated, SourceAccountDeleted, SourceAccountUpdated, SourceCreated, SourceDeleted, SourceUpdated, VAClusterStatusChangeEvent]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("AccessRequestDynamicApprover", "AccessRequestPostApproval", "AccessRequestPreApproval", "AccountAggregationCompleted", "AccountAttributesChanged", "AccountCorrelated", "AccountUncorrelated", "AccountsCollectedForAggregation", "CampaignActivated", "CampaignEnded", "CampaignGenerated", "CertificationSignedOff", "IdentityAttributesChanged", "IdentityCreated", "IdentityDeleted", "ProvisioningCompleted", "SavedSearchComplete", "SourceAccountCreated", "SourceAccountDeleted", "SourceAccountUpdated", "SourceCreated", "SourceDeleted", "SourceUpdated", "VAClusterStatusChangeEvent")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([AccessRequestDynamicApprover, AccessRequestPostApproval, AccessRequestPreApproval, AccountAggregationCompleted, AccountAttributesChanged, AccountCorrelated, AccountUncorrelated, AccountsCollectedForAggregation, CampaignActivated, CampaignEnded, CampaignGenerated, CertificationSignedOff, IdentityAttributesChanged, IdentityCreated, IdentityDeleted, ProvisioningCompleted, SavedSearchComplete, SourceAccountCreated, SourceAccountDeleted, SourceAccountUpdated, SourceCreated, SourceDeleted, SourceUpdated, VAClusterStatusChangeEvent]). JSON Payload: $($Json)"
        }
    }
}

