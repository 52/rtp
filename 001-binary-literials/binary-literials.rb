# Cách dễ nhớ để set permission cho file trong Linux

require 'fileutils'
include FileUtils

chmod 755, "somefile"

0755 #octal - Hệ cơ số 8

# User - Group - Other
# U  G  O
# rwxrwxrwx (Read - Write - Execute)
0b111101101

# Chuyển từ binary sang octal
perms = 0b111101101
perm.to_s 8 # "755"

chmod 755, "somefile"
