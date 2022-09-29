source ./shell.sh

check_root


PYTHON_VERSION=$1

if [ "$PYTHON_VERSION" == "" ]; then
echo "Usage:"
echo "  $ setup.sh[python-version]"
echo
echo "  Python version is 2 or 3 and defaults to 3 if not specified. Subversion"
echo "  of Python will be determined during runtime. The required Python version"
echo "  has to be installed and available globally."
echo
exit 1
fi
