#updateing & install virtual env
#- cluster mac
# python3	-m pip install --upgrade pip
# python3	-m pip install --user --upgrade pip
# python3	-m pip install --user virtualenv
#- local
python3	-m pip install --upgrade pip        > /dev/null
python3	-m pip install virtualenv           > /dev/null

#setting virtual ft_env
python3	-m virtualenv ft_env                > /dev/null
source	ft_env/bin/activate                 > /dev/null
