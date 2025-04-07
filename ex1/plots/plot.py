import matplotlib.pyplot as plt
import sys
import numpy as np

size = -1
times = []
threads = [1, 2, 4, 6, 8]

for file in sys.argv[1:]:
    size = file.split('_')[-1].split('.')[0]

    fp = open(file)
    line = fp.readline()
    times.append(float(line.split(' ')[-1]))
    fp.close()

fig, ax1 = plt.subplots()
ax1.grid(True)
ax1.set_xlabel("Thread Count")
plt.xticks(threads)
ax1.set_ylabel("Execution Time (s)")
ax1.plot(threads, times, color="red", marker='x')
plt.title("Execution time vs Thread count")
out = "/home/panagiotis/code/parlab/ex1/plots/time-v-thread-" + \
    str(size) + ".png"
plt.savefig(out, bbox_inches="tight")

speedup = [times[0] / i for i in times]

fig, ax2 = plt.subplots()
ax2.grid(True)
ax2.set_xlabel("Thread Count")
plt.xticks(threads)
ax2.set_ylabel("Speedup")
ax2.plot(threads, speedup, color="green", marker='o', label="Real Speedup")
ax2.plot(threads, threads, color="magenta", marker='o', label="Ideal Speedup")
plt.legend()
plt.title("Speedup vs Thread count")
out = "/home/panagiotis/code/parlab/ex1/plots/speedup-v-thread-" + \
    str(size) + ".png"
plt.savefig(out, bbox_inches="tight")