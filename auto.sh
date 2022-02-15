echo "nome de usuario :"
read user

echo "email :"
read mail

git config --global user.email "$mail"
git config --global user.name "$user"

ssh-keygen -t rsa -b 4096 -C “$mail“

eval "$(ssh-agent -s)" 

cat ~/.ssh/id_rsa.pub

