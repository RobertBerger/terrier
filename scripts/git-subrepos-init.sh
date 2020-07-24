#!/bin/bash

source subrepos.sh

HERE=$(pwd)

cd ..

git_bitbucket_prefix="git@bitbucket.org:RobertBerger"

# read both elements
for subrepo in "${!subrepos[@]}"; do
    if [ ! -d ${subrepos[$subrepo]} ]; then
      echo "-->"
      echo "+ git subrepo clone ${git_bitbucket_prefix}/${subrepo} ${subrepos[$subrepo]}"
      git subrepo clone ${git_bitbucket_prefix}/${subrepo} ${subrepos[$subrepo]}
      echo "<--"
    fi
done

git_github_prefix="git@github.com:RobertBerger"

# read both elements
for subrepogithub in "${!subreposgithub[@]}"; do
	if [ ! -d ${subreposgithub[$subrepogithub]} ]; then
	  echo "-->"
          echo "+ git subrepo clone ${git_github_prefix}/${subrepogithub} ${subreposgithub[$subrepogithub]}"
          git subrepo clone ${git_github_prefix}/${subrepogithub} ${subreposgithub[$subrepogithub]}
          echo "<--"
        fi
done

# read both elements
for repogithub in "${!reposgithub[@]}"; do
        if [ ! -d ${reposgithub[$repogithub]} ]; then
          echo "-->"
          echo "+ git clone ${git_github_prefix}/${repogithub} ${reposgithub[$repogithub]}"
          git clone ${git_github_prefix}/${repogithub} ${reposgithub[$repogithub]}
          echo "<--"
        fi
done


#echo "---"
# read first element
#for subrepo in "${subrepos[@]}"; do
#    echo $subrepo
#done
#
#echo "---"
# read second element
#for subrepo in "${!subrepos[@]}"; do
#    echo "$subrepo"
#done

cd ${HERE}
