# cicd-demo

A simple symfony 5 used to review different cicd solutions

## steps needed for a full cicd

- install vendors: `composer install -n`
- build assets: `yarn install --dev && yarn encore dev && yarn encore production`
- launch unit tests: `phpunit`
- launch functional tests: `behat`
- package the application
- deploy the application to *review* env
- deploy the application to *production* env (manual if possible)
