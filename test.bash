check=0
while [ $check -eq 0 ]
do
    password=$(zenity --password)
    if [ $(echo $password | sudo -S echo ok) == 'ok' ]; then
	check=1
    else
	password=$(zenity --password)
    fi
done
