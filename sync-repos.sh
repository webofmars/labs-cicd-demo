#!/bin/bash

set -e -o pipefail

echo "+ synchronizing all branches into master"
git rebase master ci/github-actions
git rebase master ci/gitlab-saas
git rebase master ci/drone
git merge --no-ff ci/github-actions master
git merge --no-ff ci/gitlab-saas master
git merge --no-ff ci/drone master

echo "+ pushing refs to github"
git push github --all
git push github --tags

echo "+ pushing refs to gitlab"
git push gitlab --all
git push gitlab --tags
