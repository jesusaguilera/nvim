1. brew install nvim

2. Copy nvim foler to \~/.local/share (~/.local/share/nvim)
3. Copy init.vim to \~/.config/nvim (~/.config/nvim/init.vim)

4. Install Plug on Neovim
- curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

5. Install plugins with: 
- :PlugInstall

6. run :checkhealth on nvim, the output look like:
![alt text](https://user-images.githubusercontent.com/251450/42421117-001a81ee-8303-11e8-929a-91da4ac9feea.png)

7. Place these files on each project root folder
- Check this lines to copy with a shortcut from terminal [https://github.com/jesusaguilera/terminal_customized/blob/9142d8b53f2c6f7be054c4033da7e08b8bfb9b91/bash_profile_5_11_18.txt#L48](https://github.com/jesusaguilera/terminal_customized/blob/9142d8b53f2c6f7be054c4033da7e08b8bfb9b91/bash_profile_5_11_18.txt#L48)
- .tern-project
- .jshintrc
