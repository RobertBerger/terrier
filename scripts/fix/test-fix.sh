files=$(grep -rl -w "host_pwd = os.getcwd()" . | cut -f 1 -d ':' | sort | uniq) && echo $files | xargs sed -i "s/host_pwd = os.getcwd()/host_pwd = os.getenv(\'PWD\')/g"


