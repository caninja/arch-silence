#!/bin/bash
# To enable THEMES in grub, add this line,
# GRUB_THEME=/boot/grub/themes/light-silence/theme.txt
# here /etc/default/grub

# Set theme name for later use.
name="light-silence"

# Are you root?
if [[ $EUID -ne 0 ]]; then
  echo -e "\e[31mYou must be root\e[0m." 2>&1
  exit 1
else

# You are root, start green
echo -e "You are \e[1mroot\e[0m\e[32m"

# Create theme folder if not found
if [ ! -d /boot/grub/themes ]; then
  mkdir /boot/grub/themes
fi

# Install theme as root
rm -rf /boot/grub/themes/$name
cp -TR ./theme /boot/grub/themes/$name
grub-mkconfig -o /boot/grub/grub.cfg

# Stop green, and then reboot prompt.
echo -e "\e[0m"
read -r -p "want to reboot? [y/N] " response
if [[ "$response" =~ ^([yY][sS][jJ][aA]|[yY])+$ ]]
  then
  sync
  reboot
  else
  echo -e "Next reboot will be \e[1mgood."
fi
fi
#finefine
