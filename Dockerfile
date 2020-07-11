FROM ruby:2.7.1

WORKDIR /barcelona
# COPY Gemfile /barcelona/Gemfile
# COPY Gemfile.lock /barcelona/Gemfile.lock

RUN set -x && \
    apt-get -qq update && \
    apt-get -qq upgrade -y && \
    apt-get -qq install -y build-essential && \
    apt-get -qq install -y libpq-dev && \
    apt-get -qq install -y postgresql-client && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get -qq update && apt-get -y install yarn && \
    echo 'gem: --no-rdoc --no-ri' > ~/.gemrc && \
    echo bundle install -j4 --path=vendor/bundle

COPY . /barcelona

# RUN rails webpacker:install
# rails webpacker:install:vue
# gem install rails && rails new . -d mysql
