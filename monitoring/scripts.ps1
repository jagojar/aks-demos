# container logs
ContainerLog
| project LogTime=TimeGenerated, ContainerID, LogEntry, LogEntrySource
| join kind=leftouter ( 
    ContainerInventory
    | where Repository != 'mcr.microsoft.com'
    | project Computer, ContainerID, Name, Pod=ContainerHostname, Image, Repository, InvTime=TimeGenerated
) on ContainerID

# Policy
AzureActivity
| where CategoryValue == 'Policy'