require "readline"

@app_path = "App"

@arguments = [
  '--skip-bundle',
  '--skip-yarn'
].join(' ')

# Install bridgetown
system("bridgetown new #{@app_path} #{@arguments} #{ENV['BRIDGETOWN_INSTALL_ARGS']}")

# Copy the docker files
system("rsync -a /usr/src/App-Template/ /usr/src/app/#{@app_path}/")

# Copy sample files
system("cp -ra /usr/src/App-Template/.env.sample /usr/src/app/#{@app_path}/.env")
