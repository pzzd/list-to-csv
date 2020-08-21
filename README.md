# list-to-csv
Turn a one-column list to a CSV table.

Use case: Copy HTML table data from Wordpress, and paste it into a text file. It will appear like this:
```
Color
Size
Count
Yellow
S
10
Red
Xl
3
```

Change these vars in make-csv.sh to match your text file.
```
sourcefile="sample.txt"
targetfile="sample.csv"
colct=3
```

Then run in a shell.

