for size in "64" "1024" "4096"; do
    python3 plot.py /home/panagiotis/code/parlab/ex1/outfiles/run_gameoflife_*_${size}.out
done