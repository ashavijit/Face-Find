function error_exit 
{
    echo "$1" 1>&2
    exit 1
}
# Check for root

if [ "$(id -u)" != "0" ]; then
    error_exit "This script must be run as root"
fi