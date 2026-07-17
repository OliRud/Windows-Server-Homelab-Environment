# Project Overview
A virtualised Windows Server 2019 environmnet built to simulate and enterprise network. This project demonstrates core systems administration skills including Active Directory management, network service configuration, and PowerShell automation.

<img width="500" height="602" alt="20260717_012322" src="https://github.com/user-attachments/assets/feb25895-b25a-40aa-a504-f74960f8e70f" />

# Technologies Used
 - VirtualBox
 - Windows Server 2019
 - Windows 10 (Test Client)
 - Powershell
 - Active Directory Domain Services (AD DS)
 - DNS &DHCP Services

# Environment Architecture
- **Domain Name**: olisdomain.com
- **Server VM**: Static IP 172.16.0.1 acting as DC, DNS and DHCP
- **Client VM**: Dynamically assigned when joined to domain, from ips ranging 172.16.0.100-200
- **Network**: The Domain controller is connected to external and internal access cards, the external having an ip of 10.0.0.2 which acts as the gateway to the internet, and the internal being 172.16.0.1

# Implementation
- 1. Installed Windows Server 2019 and Client OS on VirtualBox.
- 2. Assigned static IP to the server's internal NIC and configured VirtualBox networking.
- 3. Promoted the server to a Domain COntroller and installed tools like Active Directory, DNS and DHCP
- 4. Executed a PowerShell script to bulk-provision 1000 user accounts with standard suer permissions. Achieved by using and adapting an open source script made by JoshMadakor1
- 5. Connected the client VM to the network, verified it received an IP from DHCP, joined it to the domain, and succesfully logged in with a created test user.

 <img width="1415" height="570" alt="Screenshot 2026-07-17 163812" src="https://github.com/user-attachments/assets/88d12dd5-bf26-4d67-a544-640a04de43dd" />

# Challenges and Troubleshoots

<img width="1110" height="590" alt="Screenshot 2026-07-17 164616" src="https://github.com/user-attachments/assets/8a6a1cff-77bb-42b0-b58f-d2d9cdc8ae62" />
