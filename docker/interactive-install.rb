require "readline"

@app_path = "App"

# Install rails
system("bridgetown new #{@app_path}")

# Copy the docker files
system("cp -raT /usr/src/App-Template/* /usr/src/app/#{@app_path}/")

# Copy sample files
system("cp -ra /usr/src/App-Template/.env.sample /usr/src/app/#{@app_path}/.env")
