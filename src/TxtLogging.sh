#!/bin/bash
#@brief		Create a log file in reverse order

#--------------------------------------------------------------------------------
AddHeader()
#@brief		Add a header on first line
#@param 	$1	Header
#@param 	$2	Text File
{
	# Add text to fist line
	sed  -i	'1i\'"$1"'\n' $2
}

#--------------------------------------------------------------------------------
AddItem()
#@brief		Add a header
#@param 	$1	Text item
#@param 	$2	Text File
{
	# add text to first empty line
	# append a new empty line
	sed -i '0,/^$/s//'"$1"'\n/' $2
}


#--------------------------------------------------------------------------------
# Check if the function exists
if declare -f "$1" > /dev/null
then
  # call arguments verbatim
  "$@"
else
  # Show error
  echo "'$1' is not a known function name" >&2
  exit 1
fi