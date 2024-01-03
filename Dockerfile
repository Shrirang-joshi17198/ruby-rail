# Use an official Ruby runtime as a parent image
FROM ruby:2.7.4

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy Gemfile and Gemfile.lock from the current directory to the container
COPY Gemfile Gemfile.lock ./

# Install any needed packages specified in Gemfile
RUN bundle install

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Command to run the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]

