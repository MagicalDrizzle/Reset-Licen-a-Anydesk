
# 🔄 Reset (ID) AnyDesk Free Licence

This script allows you to **reset the AnyDesk free licence**, removing the restriction that prevents connections to other devices after continuous use.
> ⚠️ **Important**: **This is not a crack**. The aim is to restore AnyDesk’s functionality with the free licence, within the limits of the application itself. It will not permanently unlock your AnyDesk! It simply allows you to use the free version again without interruptions.

> 💡 **We strongly recommend** purchasing an official licence if you intend to use it frequently or for professional purposes.
> Or, if you prefer, set up your own server with Rustdesk – it’s open-source and self-hosted! See how to install <a href="https://github.com/henriquelucas/Rustdesk-Server/tree/main" />click here</a>.
---

## ⚙️ Requirements

- AnyDesk must be installed on the machine.
- Administrator permissions (Windows) or `sudo` (Linux), if required.

---

## 💻 Instructions for Windows

### ✔️ Automatic method (PowerShell)

Run the command below in PowerShell (as an administrator):

```powershell
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/henriquelucas/Reset-Licen-a-Anydesk/main/Anydesk-Reset.cmd" -OutFile "Anydesk_reset.cmd"; Start-Process "Anydesk_reset.cmd"
```

### 🧭 Manual method

1. Download the file [`Anydesk-Reset.cmd`](https://raw.githubusercontent.com/henriquelucas/Reset-Licen-a-Anydesk/main/Anydesk-Reset.cmd)
2. Right-click and select **"Run as administrator"**.
3. Wait for the script to run.
4. If AnyDesk does not start automatically, **restart your computer manually**.

---

## 🐧 Instructions for Linux

1. Download the script:
   ```bash
   wget https://raw.githubusercontent.com/henriquelucas/Reset-Licen-a-Anydesk/main/anydesk_licenca.sh
   ```

2. Grant execute permission:
   ```bash
   chmod +x anydesk_licenca.sh
   ```

3. Execute the script:
   ```bash
   ./anydesk_licenca.sh
   ```

## 🐧 Instructions for Mac

1. Download and run:
   ```bash
   curl -s https://raw.githubusercontent.com/henriquelucas/Reset-Licen-a-Anydesk/refs/heads/main/reset_licenca_macos.sh | bash
   ```
---

## ☕ Fancy buying me a coffee?

You can make a donation via PIX using the QR code below or by using this key:

```bash
00020126580014BR.GOV.BCB.PIX0136f0ced452-71ac-4953-81bf-e0d3f9a9c4965204000053039865802BR5923Henrique Lucas de Sousa6009SAO PAULO62140510WMg6htGSjk63045B58
```

 Or via PayPal:
 [Donate via PayPal](https://www.paypal.com/donate/?business=PCFJCNK8GGJN2&no_recurring=0&currency_code=BRL)

<img src="https://raw.githubusercontent.com/henriquelucas/Reset-Licen-a-Anydesk/refs/heads/main/qrcode-pix.png" width="200" />

---

🔗 Made with love by [@henriquelucas](https://github.com/henriquelucas)
