# Bot Configuration
$script:botToken = "Your Bot Token"
$script:chatID = "Chat-ID"
$script:lastUpdateId = 0

# Required PowerShell modules
$script:requiredModules = @(
    "Microsoft.PowerShell.Security",
    "Microsoft.PowerShell.Utility",
    "NetworkConnectivityStatus",
    "NetworkSwitchManager"
)

# Import required modules
foreach ($module in $requiredModules) {
    Import-Module $module -ErrorAction SilentlyContinue
} 
