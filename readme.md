# TripleA Hacking Lab

### 🔧 **How to Use the Script** {#installation-guide}

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

### Usage

Feel free to use this repository to organize your files and resources for CTF competitions, penetration testing, and other security-related activities. 

- **Start the Virtual Machine**
    ```bash
    vagrant up
    ```

- **Navigate to the Vagrant Directory**
    ```bash
    cd /vagrant
    ```

- **Install Required Components Using the Installation Guide**
    Follow the instructions under the **[How to Use the Script](#how-to-use-the-script)** section.

- **Reboot Your Machine**
    ```bash
    vagrant reload
    ```

Happy hacking 🥷!
