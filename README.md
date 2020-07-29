# UTK Hyrax Text

This repository includes code for deploying the instance of Hyrax for the Next Generation Repository.  It is based upon Data Curation Expert's original Docker instance for the UCLA 2019 Repo Camp.

## Running and Building

To start:

``` shell

docker-compse run web rails db:setup
docker-compose up -d

```
To run test specs:

``` shell

docker-compose run web rspec

```

To enter a bash prompt in the web container:


```

docker-compose run web bash

```

