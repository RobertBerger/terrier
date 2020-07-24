HERE=$(pwd)

source subrepos.sh

cd ..

for subrepo in "${subrepos[@]}"; do
    echo "-->"
    echo "+ git subrepo push ${subrepo}"
    git subrepo push ${subrepo}
    if [ $? != 0 ]; then
      echo "${RED}fix the Error!${NORMAL}"
      #exit 
    fi
    echo "<--"
done

#for subrepogithub in "${!subreposgithub[@]}"; do
#          echo "-->"
#          echo "+ git subrepo push ${subrepogithub}"
#          git subrepo push ${subrepogithub}
#          echo "<--"
#done

cd ${HERE}
