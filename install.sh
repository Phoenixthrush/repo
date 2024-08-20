clear
echo -e "\033[31m[*]\033[00m \033[96mStarting the repo installation!\033[00m"
sudo echo "Admin Prompt (this wont be shown)" >/dev/null 2>&1
echo -e "\n\033[31m[*]\033[00m \033[96mUpdating sources!\033[00m"
sudo apt update >/dev/null 2>&1
echo -e "\033[31m[*]\033[00m \033[96mInstalling curl & gpg!\033[00m"
sudo apt install curl gpg -y >/dev/null 2>&1
echo -e "\n\033[31m[*]\033[00m \033[96mAdding my repo to your apt source list!\033[00m"
sudo curl -sSL --compressed -o /etc/apt/sources.list.d/phoenixthrush-packages.list "https://phoenixthrush.com/repo/stable/phoenixthrush-packages.list" >/dev/null 2>&1
echo -e "\033[31m[*]\033[00m \033[96mAdding new keyring!\033[00m"
sudo curl -sSL https://phoenixthrush.com/repo/stable/public.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/phoenixthrush-archive-keyring.gpg >/dev/null 2>&1
echo -e "\n\033[31m[*]\033[00m \033[96mUpdating sources again!\033[00m"
sudo apt update >/dev/null 2>&1
echo -e "\n\033[31m[*]\033[00m \033[96mFinished! \033[00m\033[31m^^\033[00m\n"
