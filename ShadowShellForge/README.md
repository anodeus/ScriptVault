
# reverseShellGenX

A powerful Windows payload generator with built-in password protection. Easily create reverse shell payloads, customize IP and port, and deploy safely in lab environments. Perfect for educational and penetration testing exercises.

---

## 📂 Structure

```
ShadowShellForge/
│
├── files/
│   ├── passwordGenerator.cmd    ← generates access key
│   └── file_payload_exe.bin     ← placeholder payload file
│
├── payloads/
│   ├── file_payload_singh.bin   ← generated payload (reverse shell)
│   └── listenerAttacker.bat     ← starts Netcat listener
│
├── reverseShellGenX.bat         ← main generator script
└── README.txt                   ← this documentation
```

---

## 🛠️ How It Works

### 1. Getting the Password

* Run `files/passwordGenerator.cmd`
* The script dynamically reveals the password.
* Copy this password. It will be used to unlock the generator.

---

### 2. Running the Generator

1. Open `generator.bat`

2. Enter the password you obtained from `passwordGenerator.cmd`

3. Follow prompts:

   * Enter **IP address** (your listener machine)
   * Enter **port** (the listener port)
   * Enter a **name for the payload**

4. The payload is saved in `payloads/` as `file_payload_singh.bin`.

---

### 3. Running the Listener

1. Open `payloads/listenerAttacker.bat`
2. Enter the port you specified for the payload
3. A Netcat listener window opens
4. When the payload connects, you get a shell

---

### ⚠️ Notes

* **Testing only** use in lab or on systems you own
* Payloads require **PowerShell on Windows** to work
* `files/` and `payloads/` should start **empty except for the placeholders**

---


Perfect! You want to **add a disclaimer** to make it clear that this is **educational only** and you’re **not responsible for misuse**.

Here’s a professional way to add it to your README **and optionally to the scripts themselves**.

---


## ⚠️ Disclaimer

This project is created **for educational purposes only**. The author (Abhi Singh) **does not condone or take responsibility** for any illegal use of these scripts or payloads.  

Use this tool **only in controlled lab environments** or on systems you own and have explicit permission to test. Any misuse of this software **outside of legal boundaries is strictly prohibited**.  

By using this project, you agree to use it responsibly and at your own risk.


