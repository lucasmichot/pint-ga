FROM php:8.0-alpine

LABEL "com.github.actions.name"="Laravel-Pint-Github-Action"
LABEL "com.github.actions.description"="Check PHP files style with Laravel Pint"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/lucasmichot/pint-ga"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Lucas Michot <lmichot@gmail.com>"

RUN wget https://github.com/laravel/pint/releases/download/v0.2.3/pint.phar -O pint \
    && chmod a+x pint \
    && mv pint /usr/local/bin/pint

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
