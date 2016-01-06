#Helpful aliases
alias qnd-deploy='(cd ~/workspace/cf-release && bosh --parallel 10 sync blobs && bosh create release --name cf --force && bosh upload release && bosh -n deploy)'	
alias qnd-deploy-manifest='(cd ~/workspace/cf-release && scripts/generate-bosh-lite-dev-manifest && qnd-deploy)'
