# Auto Pifi
_A service for the raspberry pi 3 which automatically broadcasts a hotspot if all network interfaces are disconnected._

_Ideal for those who use their pi without a display._

## Installation

**Install dependencies**

    yaourt -S create_ap

**Install**

    git clone https://github.com/andy-richardson/auto-pifi.git
    
    ./auto-pifi/install.sh
    
## Usage

**Disable auto pifi**

    systemctl disable auto-pifi.timer
    
**Re-enable auto pifi**

    systemctl enable auto-pifi.timer
    
    
## Uninstallation

    git clone https://github.com/andy-richardson/auto-pifi.git
    
    ./auto-pifi/uninstall.sh
