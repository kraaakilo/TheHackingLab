# TripleA Hacking Lab

### 🔧 **How to Use the Script**

1. **Clone the Repository**
    ```bash
    git clone https://github.com/kraaakilo/TheHackingLab
    cd TheHackingLab
    ```

2. **Make the Script Executable**
    ```bash
    chmod +x install
    ```

3. **Run the Script with Desired Options**
    - **Install All Components**
      ```bash
      ./install all
      ```
    - **Install Specific Components**
      - Install default packages:
        ```bash
        ./install pkg
        ```
      - Install Nerd Fonts:
        ```bash
        ./install fonts
        ```
      - Install Oh My Zsh:
        ```bash
        ./install omz
        ```
      - Install Starship Prompt:
        ```bash
        ./install starship
        ```
      - Set up Tmux Plugin Manager:
        ```bash
        ./install tmux
        ```
      - Install Neovim:
        ```bash
        ./install nvim
        ```

4. **Display Help**
    ```bash
    ./install help
    ```

5. **Stow Dotfiles**
    ```bash
    ./install stow
    ```

---

### 🛠️ **Installing Vagrant**

To set up Vagrant for the **TripleA Hacking Lab**, follow these steps:

1. **Install VirtualBox**
   Vagrant uses VirtualBox as its default provider. Install it using your package manager or download it from the [VirtualBox website](https://www.virtualbox.org/).

2. **Install Vagrant**
   - On **Debian/Ubuntu**:
     ```bash
     sudo apt install vagrant
     ```
   - On **Fedora**:
     ```bash
     sudo dnf install vagrant
     ```
   - On **macOS** (using Homebrew):
     ```bash
     brew install vagrant
     ```
   - Alternatively, you can download the installer from the [Vagrant website](https://www.vagrantup.com/downloads).

3. **Verify Vagrant Installation**
   Run the following command to ensure Vagrant is installed correctly:
   ```bash
   vagrant --version
   ```

---

### 📁 **Project Structure**

Feel free to use this repository to organize your files and resources for CTF competitions, penetration testing, and other security-related activities. Here’s an example of my workspace structure:

```plaintext
── workspace
    ├── capture_the_flag
    │   ├── challenges
    │   │   ├── cryptohack
    │   │   ├── picoCTF
    │   │   │   ├── binary_exploitation
    │   │   │   ├── forensics
    │   │   │   ├── general_skills
    │   │   │   ├── reverse_engineering
    │   │   │   └── web_exploitation
    │   │   └── ThunderCipher
    │   │       ├── binary_exploitation
    │   │       ├── forensics
    │   │       ├── general_skills
    │   │       ├── reverse_engineering
    │   │       └── web_exploitation
    │   └── machines
    ├── pentesting
    └── tools
        └── screensh00ter
            ├── main.js
            ├── package.json
            └── pnpm-lock.yaml
```

### 🚀 **Start the Virtual Machine**
To initialize your virtual machine, run:
```bash
vagrant up
```

### 🔄 **Navigate to the Vagrant Directory**
Once the VM is running, access the shared directory:
```bash
cd /vagrant
```

### 🛠️ **Install Required Components Using the Installation Guide**
Follow the instructions under the **[How to Use the Script](#-how-to-use-the-script)** section to install the necessary components.

### 🔄 **Reboot Your Machine**
If needed, you can reboot your VM with:
```bash
vagrant reload
```
Demo is here : [https://www.youtube.com/watch?v=DRU3zk5F30k](https://www.youtube.com/watch?v=DRU3zk5F30k)Happy hacking! 🥷
