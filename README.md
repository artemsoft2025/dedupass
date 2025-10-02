# dedupass

dedupass - Утилита для работы со словарями паролей

ОСНОВНЫЕ КОМАНДЫ:<br><br>
  Удаление дубликатов:<br><br>
    dedupass --remove-duplicates файл.txt<br><br>
    dedupass -rd файл.txt<br><br>
<br><br>
  Создание очищенной копии:<br><br>
    dedupass --output результат.txt исходник.txt<br><br>
    dedupass -o чистый.txt грязный.txt<br><br>
<br><br>
  Объединение файлов:<br><br>
    dedupass --output общий.txt файл1.txt файл2.txt файл3.txt<br><br>
    dedupass -o результат.txt папка/*.txt<br><br>
<br><br>
  Использование списка файлов:<br><br>
    dedupass --list список.txt --output итог.txt<br><br>
    dedupass -l файлы.list -o результат.txt<br><br>
<br><br>
СОКРАЩЕНИЯ:<br><br>
  -rd  --remove-duplicates  Удалить дубликаты в файле<br><br>
  -o   --output             Указать выходной файл<br><br>
  -l   --list               Использовать файл-список<br><br>
  -h   --help               Показать справку<br><br>
<br><br>
ПРИМЕРЫ:<br><br>
  dedupass -rd rockyou.txt                    # Очистить файл от дубликатов<br><br>
  dedupass -o clean.txt dirty.txt            # Создать очищенную копию<br><br>
  dedupass -o combined.txt *.txt            # Объединить все txt файлы<br><br>
  dedupass -l my_files.list -o final.txt    # Использовать список файлов<br><br>
<br><br>
ФАЙЛЫ-СПИСКИ:<br><br>
  Создайте файл со списком файлов для обработки:<br><br>
    file1.txt<br><br>
    file2.txt<br><br>
    folder/*.txt<br><br>
    @another_list.list<br><br>
<br><br>
ДОПОЛНИТЕЛЬНО:<br><br>
  dedupass --help      # Полная подробная справка<br><br>
  dedupass             # Запуск в интерактивном режиме<br><br><br><br>
  <br><br>
Для связи:<br><br>
О выявленных ошибках и предложения пишите:
<br><br>
Telegram: https://t.me/avhelpnew<br><br>
artemsoft[@]yahoo.com