# cicd-demo

A simple symfony 5 used to review different cicd solutions

## steps needed for a full cicd

- install vendors: `composer install -n`
- build assets: `yarn install --dev && yarn encore dev && yarn encore production`
- launch unit tests: `php bin/phpunit ./tests/unit-tests`
- launch functional tests: `php bin/phpunit ./tests/functionnal-tests`
- package the application: (make a zipfile or dockerize it)
- deploy the application to *review* env
- deploy the application to *production* env (manual if possible)

## criterias

TBD
