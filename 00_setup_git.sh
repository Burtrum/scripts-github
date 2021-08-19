## 00_setup_git.sh
#
# 1. Run once NOT as root
# 2. Setting your Git username/email for every repository on your computer
#
echo "START: 00_setup_git.sh"

git config --global user.name "burtrum"
git config --global user.email "robertbc36@gmail.com"

# Still git creates default 'master'.
# Rename to 'main' with "git branch -M main" later.
git config --global init.defaultBranch main

echo "END: 00_setup_git.sh"
