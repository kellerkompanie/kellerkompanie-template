#!/bin/bash
echo "Kellerkompanie Build Tools"
echo ""

echo "executing copy_scripts.py"
python copy_scripts.py
echo "FINISHED"
echo ""

echo "executing pbo_all.py"
python pbo_all.py
echo "FINISHED"
echo ""

echo "executing zip_all.py"
python zip_all.py
echo "FINISHED"
echo ""