#!/bin/sh -eux

pip install --user -U https://github.com/platformio/platformio/archive/develop.zip

rm -r test

for EXAMPLE in JsonParserExample JsonGeneratorExample
do
	platformio ci examples/$EXAMPLE/$EXAMPLE.ino -l '.' -b $BOARD
done
