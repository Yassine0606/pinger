#!bin/bash
executable_files=0
non_executable_files=0

for i in 'ls $1'; do
  if [ -x '$i' ]; then
    ((executable_files++))
  else
    ((non_executable_files++))
  fi
done

echo "Nombre de fichiers exécutables : $executable_files" > list_exe.txt
echo "Nombre de fichiers non exécutables : $non_executable_files" >> list_exe.txt