# light-silence GRUB2 theme
Forked from Arch-Silence GRUB2 theme

My flat white cat GRUB2 theme.

## Install
To enable themes in grub2, add the line below to /etc/default/grub

  GRUB_THEME=/boot/grub/themes/light-silence/theme.txt

## Font

The font in the boot menu can't be changed because of GRUB.

GRUB does have a conversion tool from ttf to it's own format but this format encodes each pixel with 1 bit which makes it completely useless since there's practically no font that is readable in such a low bit-depth.

## License

If not explicitly stated otherwise all the files in this project are distributed under the [GNU General Public License](./COPYING).

## Picture found here:
google: tree silhouette cat

https://openclipart.org/download/260551/Curly-Tailed-Cat-On-Tree-Silhouette.svg

## Author
Fredrik Edler 

## Forked from 
Filippo Ghibellini
https://github.com/fghibellini/arch-silence
