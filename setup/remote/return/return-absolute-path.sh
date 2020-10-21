
#!/bin/bash

  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
  
# myabsfile=$(get_abs_filename "../../foo/bar/file.txt")