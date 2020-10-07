# php-dev ![Docker](https://github.com/likesistemas/php-dev/workflows/Docker/badge.svg) ![Docker 5.6](https://github.com/likesistemas/php-dev/workflows/Docker%205.6/badge.svg)

Implementa o [php](https://github.com/likesistemas/php) com as ferramentas de desenvolvimento já instaladas.
Já vem com composer, xdebug e mostrando erros por padrão.

## Environment Vars (somente dev)
```
DB_HOST: Aguarda o host do banco de dados iniciar, timaout 30 segundos. (opcional)
DB_PORT: Porta do banco de dados. (opcional, padrão 3306)
DB_MIGRATE: Informar true para executar o migrate depois da checagem do banco de dados (opcional)
DB_SEED: Informar true para executar o seed depois da checagem do banco de dados (opcional)
COMPOSER_INSTALL: Executa o comando do composer install ao iniciar (opcional, boolean)
COMPOSER_INSTALL_PARAMS: Parametros que serão passados ao composer install (opcional, padrão: -a --no-dev)
COMPOSER_FOLDER: Define a pasta raiz do composer (opcional)
```

### XDebug

```
XDEBUG_HOST=Informar o host do XDEBUG, segue docs: https://xdebug.org/docs/all_settings#remote_host
XDEBUG_IDEKEY=Se não informado será utilizado a env PHP_NAME como padrão. Segue docs: https://xdebug.org/docs/all_settings#xdebug.idekey
XDEBUG_PROFILER=Se informado será ativado o profile e será salvo na pasta: /var/xdebug/.
XDEBUG_CONFIG=Variavel do próprio XDEBUG. Segue docs: https://xdebug.org/docs/remote
```
