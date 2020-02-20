#!/bin/bash

set -e -o pipefail

echo "+ synchronizing all branches"
git merge --ff-only ci/github-actions master
git merge --ff-only ci/gitlab-saas master
git merge --ff-only ci/drone master

git fetch . master:ci/github-actions
git fetch . master:ci/gitlab-saas
git fetch . master:ci/drone

echo "+ pushing refs to github"
# git push github --all
# git push github --tags

echo "+ pushing refs to gitlab"
# git push gitlab --all
# git push gitlab --tags
