function do_dirs --wraps='any command in dir' --description 'alias do_dirs run command in each dir in local folder'
  for dir in (ls -d */)
    cd $dir
    $argv
    cd ..
  end
end
