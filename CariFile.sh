#!/bin/bash
# Author : Refri Rifwan Daharmi - 155150201111159
# ===== Cara Menjalankan Program =====
# $ ./CariFile.sh atau $ bash CariFile.sh

echo "=== Program Untuk Mencari File excutable di dalam folder ==="
echo "Tekan Y untuk mencari file "
echo "Tekan Q untuk menutup program "
read -p "Tekan pilihan anda : " pilih

case $pilih in
 Y|y) lanjutkan="Y"
      while [ $lanjutkan = "Y" ] ; do 
       read -p "Masukan nama folder atau path folder : " folder
       if cd $folder 
       then
        echo "Program mengganti directory ke $folder"
        echo "Menampilkan File yang dapat di eksekusi"
        find . -type f -executable -ls
       else 
        echo "folder not found"
       fi
       read -p "mau lanjutkan mencari file ? (Y/N)" jawab
       lanjutkan=`echo $jawab | tr [:lower:] [:upper:]`
      done
      echo "Sampai Jumpa"
 ;;
 Q|q) echo "Sampai Jumpa"; exit 1 ;;
esac
