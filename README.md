# 🚀 LazyVim - Laravel Focused Setup ⚡️

Welcome to my personal LazyVim configuration, tailored for Laravel and PHP developers! 🎉 This setup builds upon the fantastic [LazyVim](https://github.com/LazyVim/LazyVim) framework, adding specific tweaks and enhancements to streamline your workflow.

## ✨ Features

* **Blade Syntax Highlighting Fix:** Enjoy accurate and vibrant syntax highlighting for your Blade templates. 🎨
* **Blade Formatting:** Keep your Blade files clean and consistent with integrated formatting. 🧹
* **Laravel Focused Tweaks:** Optimized configurations for a smooth Laravel development experience. 🛠️
* **LazyVim Power:** Leverage the speed and flexibility of LazyVim with a well-structured and documented setup. 📖

## 📦 Installation

**Important:** Before proceeding, back up your existing Neovim configuration and clear the cache.

1.  **Backup and Clean:**

    ```bash
    mv ~/.local/share/nvim ~/.local/share/nvim.bk &&
    mv ~/.local/state/nvim ~/.local/state/nvim.bk &&
    rm -rf ~/.cache/nvim
    ```

2.  **Clone the Repository:**

    ```bash
    git clone <THIS_REPOSITORY_URL> ~/.config/nvim
    ```

3.  **Launch Neovim:**

    ```bash
    nvim .
    ```

    LazyVim will automatically install the necessary plugins. Sit back and relax! ☕

    !!! You should installed NeoVim before :)

## 💡 About My Configuration

I chose LazyVim for its simplicity, excellent documentation, and modular structure. This configuration enhances the standard LazyVim setup with Laravel-specific features, making it a powerful tool for PHP development.

## 🛠️ Prerequisites

* Understanding of your operating system's package manager (e.g., `pacman`, `yay`, `apt`, `brew`).
* Basic knowledge of Neovim configuration directories (e.g., `~/.config/nvim` on Linux/macOS).
* Required build tools (e.g., `nodejs`, `cmake`, `g++`). Use `:checkhealth` in Neovim to identify missing dependencies.

    * **Tip:** Use `:checkhealth` and `:messages` within Neovim to troubleshoot issues. 🔍

## ⚙️ Customization

LazyVim's documentation is your best friend! 🤝 All configurations are easily customizable by modifying the files within `~/.config/nvim/lua/config/`. Feel free to adapt this setup to your specific needs.

## ❓ Why Use This Configuration?

If you're a Laravel developer, this configuration offers:

* Out-of-the-box Blade syntax highlighting and formatting.
* Optimized settings for a seamless Laravel workflow.

## 📂 Alternate Branches

If you're interested in a Packer-based configuration, check out the older branches of this repository. However, I highly recommend using the LazyVim setup for its modern features and ease of use.

## 🤝 Contributions

Feel free to open issues or submit pull requests with improvements or bug fixes! Let's make this configuration even better. ✨

I try to updated that if needed!
