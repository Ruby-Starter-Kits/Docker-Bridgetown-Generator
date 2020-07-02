require "readline"

@app_path = "App"

@arguments = [
  '--skip-bundle',
  '--skip-yarn'
].join(' ')

# TODO:
# Look into adding the:
# --apply="https://github.com/ParamagicDev/bridgetown-automation-docker-compose"
# argument in. It could reduce the duplication of approaches to docker for Bridgetown.

# Install rails
system("bridgetown new #{@app_path} #{@arguments}")

# Copy the docker files
system("shopt -s dotglob")
system("cp -ra /usr/src/App-Template/* /usr/src/app/#{@app_path}/")

# Copy sample files
system("cp -ra /usr/src/App-Template/.env.sample /usr/src/app/#{@app_path}/.env")
