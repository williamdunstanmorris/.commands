# ref:
# "https://www.gnu.org/software/gawk/manual/gawk.html\#Foreword4"

# run an awk program either with or without the -f flag, specifying the program
awk -f program_file.awk input_file_1

# print a friendly piece of advice
awk 'BEGIN { print "Don\47t Panic!"}'

# the same as..
echo "Don't Panic\!"

