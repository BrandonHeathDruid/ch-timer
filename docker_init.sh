UTILITY=$PWD/chsystem/utility/
echo "$PYTHONPATH" | grep -q "$UTILITY"
if [ $? != 0 ]; then
  export PYTHONPATH=$PYTHONPATH:$UTILITY
  echo "Module $UTILITY added to $PYTHONPATH"
else
  echo "Module $UTILITY already present in $PYTHONPATH"
fi

python3 "$1"