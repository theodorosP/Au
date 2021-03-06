import matplotlib.pyplot as plt
import numpy as np
x = []
y = []
for line in open("DATA.dat", "r"):
	values = [float(s) for s in line.split()]
	x.append(values[0])
	y.append(values[1])

plt.xlabel("Kinetic energy cut off")
plt.ylabel("Total energy")
a = plt.plot(x ,y - np.min(y), "o-")
plt.show(a)


