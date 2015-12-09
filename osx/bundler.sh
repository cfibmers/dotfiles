mkdir -p ~/.bundle
cat << EOF > ~/.bundle/config
---
BUNDLE_BUILD__EVENTMACHINE: "--with-cppflags=-I$(brew --prefix openssl)/include"
EOF
