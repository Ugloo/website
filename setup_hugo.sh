HUGO_VERSION="0.134.1"
HUGO_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
DEST_BIN="${HOME}/.local/bin"
FILENAME="hugo.tar.gz"

# Download Hugo Extended and place it in a folder in the $PATH
curl --create-dirs -s -L -o ${DEST_BIN}/${FILENAME} ${HUGO_URL}
cd ${DEST_BIN}
tar xvf ${FILENAME} -C ${DEST_BIN}
rm ${FILENAME}