#!/bin/bash

set -e -o pipefail

echo "+ synchronizing all branches"
git merge ci/github-actions master
git merge ci/gitlab-saas master
git merge ci/drone master

git merge master ci/github-actions
git merge master ci/gitlab-saas
git merge master ci/drone

echo "+ pushing refs to github"
# git push github --all
# git push github --tags

echo "+ pushing refs to gitlab"
# git push gitlab --all
# git push gitlab --tags
