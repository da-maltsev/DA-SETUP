function pdms --wraps='pdm sync' --description 'alias pdms pdm sync if pdm.lock exists'

  if test -f pdm.lock
    pdm sync $argv
  else
    echo "pdm.lock file not found, pdm sync will not run"
  end

end
