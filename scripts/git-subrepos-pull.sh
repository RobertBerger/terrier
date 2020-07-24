HERE=$(pwd)

source subrepos.sh

cd ..

for subrepo in "${subrepos[@]}"; do
    echo "-->"
    echo "+ git subrepo pull ${subrepo}"
    git subrepo pull ${subrepo}
    if [ $? != 0 ]; then
       echo "${RED}fix the Error!${NORMAL}"
       exit
    fi

    echo "<--"
done

for subrepogithub in "${!subreposgithub[@]}"; do
          echo "-->"
          echo "+ git subrepo pull ${subrepogithub}"
          git subrepo pull ${subrepogithub}
          if [ $? != 0 ]; then
             echo "${RED}fix the Error!${NORMAL}"
             exit
          fi
          echo "<--"
done

cd ${HERE}
