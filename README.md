# Uraspect
## Деплой
см. [DEPLOY.md](DEPLOY.md)

## База
### Пример config/database.yml:
```yaml
development:
  adapter: mysql2
  encoding: utf8
  database: uraspect_dev
  username: root
  password: ''

test: &test
  adapter: mysql2
  encoding: utf8
  database: uraspect_test
  username: root
  password: ''

production:
  adapter: mysql2
  encoding: utf8
  database: uraspect_prod
  username: root
  password: ''

cucumber:
  <<: *test
```

## Thinking Sphinx
```sh
sudo apt-add-repository ppa:builds/sphinxsearch-stable
sudo apt-get install sphinxsearch
```
