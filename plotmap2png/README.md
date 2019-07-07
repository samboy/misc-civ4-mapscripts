# Let's make a bunch of PNG files

By using standard UNIX tools, along with Python 2, we can generate a large
number of random worlds:

```bash
SEED=1
while : ; do 
	echo $SEED 
	python2 ../TotestraRG32.py $SEED arid > totestrarg32-T$SEED
	SEED=$(( $SEED + 1 ))
done
```

However, the output is in an unusual ASCII format.  So, let’s make
those ASCII maps PNG files.  This time, we will need to use Python 3, so
let’s set up a virtual environment:

```bash
virtualenv makemap
. makemap/bin/activate
pip install -r requirements.txt
for map in totestrarg32-T* ; do 
	cat $map | ./plotmap2png.py 
	mv out.png $map.png
	echo $map
done
```

Voila!  We now have a bunch of PNG files we can look at to see which ones
make for nice maps.

