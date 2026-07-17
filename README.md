
<img width="1415" height="470" alt="Screenshot 2026-07-17 163812" src="https://github.com/user-attachments/assets/88d12dd5-bf26-4d67-a544-640a04de43dd" />

# Project Overview
A virtualised Windows Server 2019 environmnet built to simulate and enterprise network. This project demonstrates core systems administration skills including Active Directory management, network service configuration, and PowerShell automation.

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

# Challenges and Troubleshoots

<img width="600" height="1002" alt="20260717_012322" src="https://github.com/user-attachments/assets/feb25895-b25a-40aa-a504-f74960f8e70f" />
<img width="1110" height="190" alt="Screenshot 2026-07-17 164616" src="https://github.com/user-attachments/assets/8a6a1cff-77bb-42b0-b58f-d2d9cdc8ae62" />
