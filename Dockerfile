FROM ruby:3.4.1

# Install essential Linux packages including build dependencies
RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client build-essential libxml2-dev libxslt1-dev libffi-dev pkg-config

# Set up working directory
WORKDIR /mother_child_api

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Add Linux platform to Gemfile.lock (if not present)
RUN bundle lock --add-platform x86_64-linux

# Install gems
RUN bundle install

# Copy the rest of the application code
COPY . .

# Precompile bootsnap code for faster boot times
RUN bundle exec bootsnap precompile --gemfile app/ lib/

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]