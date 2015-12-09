spiff_version="v1.0.7"

if [ ! -x /usr/local/bin/spiff ]; then
    curl -L -o ~/Downloads/spiff_darwin_amd64.zip https://github.com/cloudfoundry-incubator/spiff/releases/download/${spiff_version}/spiff_darwin_amd64.zip
    unzip -d /usr/local/bin ~/Downloads/spiff_darwin_amd64.zip && rm ~/Downloads/spiff_darwin_amd64.zip
fi
