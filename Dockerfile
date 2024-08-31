FROM ruby:3.2.2

# Install essential Linux packages
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set up working directory
WORKDIR /mother_child_api

# Install Rails
RUN gem install rails -v 6.1.7.3

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

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