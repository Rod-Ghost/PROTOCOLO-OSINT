#!/usr/bin/env bash

##<!-- Atualizado: 18/10/2024 -->
##<!-- Para uso APENAS com Ubuntu 20.04 -->
##<!-- Estas instruções ajudarão na criação da sua máquina personalizada e serão atualizadas conforme as mudanças ocorrerem -->
##<!-- Detalhes completos de uso estão disponíveis no livro: Protocolo OSINT -->
##<!-- Algumas variações podem estar presentes para usuários de Windows/Mac (como 'Avançar' vs. 'Continuar') -->
##<!-- Estas instruções são fornecidas 'como estão', sem garantia de qualquer tipo -->
##<!-- Em nenhum caso o titular dos direitos autorais será responsável por qualquer reclamação, danos ou outra responsabilidade -->
##<!-- Informações completas sobre licenças e restrições estão disponíveis em https://inteltechniques.com/osintbook8/license.txt -->


sudo adduser osint vboxsf
sudo apt purge -y apport
sudo apt remove -y popularity-contest
sudo apt update
sudo apt install -y build-essential dkms gcc make perl
sudo rcvboxadd setup
sudo snap install vlc
sudo apt install -y ffmpeg
sudo apt install -y python3-pip
sudo -H python3 -m pip install youtube_dl
sudo -H python3 -m pip install yt-dlp
sudo -H python3 -m pip install youtube-tool
sudo -H python3 -m pip install xeuledoc
cd ~/Desktop
sudo apt install -y curl
curl -O https://inteltechniques.com/data/osintbook8/vm-files.zip
unzip vm-files.zip -d ~/Desktop/
mkdir ~/Documents/scripts
mkdir ~/Documents/icons
cd ~/Desktop/vm-files/scripts
cp * ~/Documents/scripts
cd ~/Desktop/vm-files/icons
cp * ~/Documents/icons
cd ~/Desktop/vm-files/shortcuts
sudo cp * /usr/share/applications/
cd ~/Desktop
rm vm-files.zip
rm -rf vm-files
sudo -H python3 -m pip install streamlink
sudo -H python3 -m pip install Instalooter
sudo -H python3 -m pip install Instaloader
sudo snap install gallery-dl
sudo apt install -y git
mkdir ~/Downloads/Programs
cd ~/Downloads/Programs
git clone https://github.com/sherlock-project/sherlock.git
cd sherlock
sudo -H python3 -m pip install -r requirements.txt -I
sudo -H python3 -m pip install socialscan -I
sudo -H python3 -m pip install holehe -I
cd ~/Downloads/Programs
git clone https://github.com/WebBreacher/WhatsMyName.git
cd WhatsMyName
sudo -H python3 -m pip install -r requirements.txt -I
cd ~/Downloads/Programs
git clone https://github.com/ChrisTruncer/EyeWitness.git
cd EyeWitness/Python/setup
sudo -H ./setup.sh
sudo snap install amass
cd ~/Downloads/Programs
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
sudo -H python3 -m pip install -r requirements.txt -I
cd ~/Downloads/Programs
git clone https://github.com/s0md3v/Photon.git
cd Photon && sudo -H python3 -m pip install -r requirements.txt -I
cd ~/Downloads/Programs
git clone https://github.com/laramies/theHarvester.git
cd theHarvester
sudo -H python3 -m pip install -r requirements.txt -I
sudo -H python3 -m pip install pipenv -I
sudo -H python3 -m pip install webscreenshot -I
sudo add-apt-repository -y ppa:micahflee/ppa
sudo apt -y update
sudo apt install -y torbrowser-launcher
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb
sudo apt install -y mediainfo-gui
sudo apt install -y libimage-exiftool-perl
sudo apt install -y mat2
sudo apt install -y webhttrack
wget http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
sudo apt install -y ./google-earth-stable_current_amd64.deb
sudo rm google-earth-stable_current_amd64.deb
sudo apt install -y kazam
sudo snap install keepassxc
sudo apt update --fix-missing
sudo apt -y upgrade
sudo apt --fix-broken install
cd ~/Desktop
firefox &
sleep 10
pkill -f firefox
curl -O https://inteltechniques.com/data/osintbook8/ff-template.zip
unzip ff-template.zip -d ~/.mozilla/firefox/
cd ~/.mozilla/firefox/ff-template/
cp -R * ~/.mozilla/firefox/*.default-release
cd ~/Desktop
rm ff-template.zip
cd ~/Desktop
curl -O https://inteltechniques.com/data/osintbook8/tools.zip
unzip tools.zip -d ~/Desktop/
rm tools.zip
cd ~/Downloads/Programs
git clone https://github.com/opsdisk/metagoofil.git
cd metagoofil
sudo -H python3 -m pip install -r requirements.txt -I
cd ~/Downloads/Programs
git clone https://github.com/lanmaster53/recon-ng.git
cd recon-ng
sudo -H python3 -m pip install -r REQUIREMENTS -I
cd ~/Downloads/Programs
git clone https://github.com/smicallef/spiderfoot.git
cd spiderfoot
sudo -H python3 -m pip install -r requirements.txt -I
cd ~/Downloads/Programs
git clone https://github.com/AmIJesse/Elasticsearch-Crawler.git
sudo -H python3 -m pip install nested-lookup -I
sudo -H python3 -m pip install internetarchive -I
sudo apt install -y ripgrep
sudo -H python3 -m pip install bdfr -I
sudo -H python3 -m pip install redditsfinder -I
sudo -H python3 -m pip install waybackpy -I
sudo -H python3 -m pip install testresources -I
sudo -H pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 sudo -H pip install -U
gsettings set org.gnome.desktop.background picture-uri ''
gsettings set org.gnome.desktop.background primary-color 'rgb(66, 81, 100)'
gsettings set org.gnome.desktop.notifications show-banners true
gsettings set org.gnome.desktop.screensaver show-notifications false
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
gsettings set org.gnome.desktop.privacy remember-recent-files false
gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.shell favorite-apps []
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'google-chrome.desktop', 'torbrowser.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Terminal.desktop', 'updates.desktop', 'tools.desktop', 'youtube_dl.desktop', 'ffmpeg.desktop', 'streamlink.desktop', 'instagram.desktop', 'gallery.desktop', 'usertool.desktop', 'eyewitness.desktop', 'domains.desktop', 'metadata.desktop', 'httrack.desktop', 'metagoofil.desktop', 'elasticsearch.desktop', 'reddit.desktop', 'internetarchive.desktop', 'spiderfoot.desktop', 'recon-ng.desktop', 'mediainfo-gui.desktop', 'google-earth-pro.desktop', 'kazam.desktop', 'keepassxc_keepassxc.desktop', 'gnome-control-center.desktop']"
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
echo
read -rsp $'Press enter to continue...\n'
echo
