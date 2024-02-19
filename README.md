
# Zero Screen: A Raspberry Pi Zero Kiosk Guide

Welcome to Zero Screen, your go-to guide for setting up a lightweight, cost-effective kiosk using the Raspberry Pi Zero. This project is tailored for those who need to display full-screen images while not breaking the bank and compromising on live updates and other functionalities.

Finding a solution that supports the relatively low-end hardware of the Pi Zero, including challenges like the lack of Chromium support, can be daunting. Zero Screen emerges as a practical workaround, offering a step-by-step guide to creating a kiosk that not only meets these requirements but is also simple to update and maintain.

This README serves as a personal log and a comprehensive guide for setting up your kiosk. Whether you're looking to replicate my setup or customize it to fit your needs, you'll find all the necessary steps and recommendations here. This guide will evolve over time as new improvements and methods are discovered.

## Getting Started

To kick things off, you'll need a Raspberry Pi Zero and a basic understanding of working with Raspberry Pi OS. Follow these steps to transform your Pi Zero into a fully functional kiosk:

### 1. Prepare Your Raspberry Pi Zero

-   **Flash an SD Card**: Start by flashing an SD card with the Raspberry Pi OS (Desktop Version).

### 2. Initial Setup

-   **Secure Shell (SSH) Access**: SSH into your Pi Zero to perform the initial setup and updates.

### 3. Configure the Display

-   **Disable Screen Blanking**: Use `raspi-config` to disable screen blanking, ensuring your display remains active.

### 4. Install Necessary Software

-   **Feh Image Viewer**: Install `feh`, a lightweight image viewer, to manage your display images.
    

-   `sudo apt install feh` 
    
-   **Unclutter**: Install `unclutter` to hide the cursor from the screen.
    

-   `sudo apt install unclutter` 
    

### 5. Repository Setup

-   **Clone This Repository**: Clone this git directory to your Raspberry Pi Zero.

### 6. Autostart Configuration

-   **Modify `screen_autostart.desktop`**: Adjust the `Exec` path in `screen_autostart.desktop` to point to the `start_screen.sh` script. Feel free to move `start_screen.sh` to a desired location before proceeding.
-   **Setup Autostart**: Move `screen_autostart.desktop` and `unclutter_autostart.desktop` to `~/.config/autostart/`.
    
  ```
    mkdir ~/.config/autostart/
    mv screen_autostart.desktop ~/.config/autostart/
    mv unclutter_autostart.desktop ~/.config/autostart/
  ```
    

### 7. Image Folder Setup

-   **Prepare Image Folder**: Create a directory to store your images (e.g., `/home/$USER/Sync/`) and adjust the `SHARE_PATH` variable in your scripts to match this location.

### 8. File Browser Installation

-   **Install FileBrowser**: Set up [FileBrowser](https://github.com/filebrowser/filebrowser) to manage your files easily. Refer to the [installation guide](https://filebrowser.org/installation) for detailed instructions.

### 9. Network Configuration

-   **Set Local IP Address**: Modify the `IP_ADDRESS` in `start_screen.sh` to match your Raspberry Pi Zero's local IP address. Ensure this IP address is reserved in your router settings to avoid conflicts.

## Customization and Tips

-   This guide is designed with flexibility in mind. Feel free to replace or modify any step to better suit your project's needs.
-   Regularly check back for updates and new tips on enhancing your Zero Screen setup.

## Feedback and Contributions

Your feedback and contributions are welcome! If you have improvements, suggestions, or have found this guide helpful, please feel free to share your thoughts or submit a pull request.
