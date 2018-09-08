FROM ruby:2.3.5

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
        nodejs \
        wget \
        build-essential \
        libc6-dev \
        apt-transport-https \
        freetds-dev \
        redis-server \
        redis-tools \
        curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt-get install -y nodejs

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y yarn


WORKDIR /app
ENV BUNDLE_APP_CONFIG /app/.bundle
COPY Gemfile* ./
RUN bundle install

EXPOSE 3000
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0", "-P", "/tmp/rails.pid"]
