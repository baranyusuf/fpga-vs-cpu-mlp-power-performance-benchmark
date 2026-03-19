import os
import time
import numpy as np
import psutil
from tensorflow import keras

# GPU kapat
os.environ["CUDA_VISIBLE_DEVICES"] = ""

process = psutil.Process()

model = keras.models.load_model("mlp_model.keras")

N = 200000
X = np.random.randn(N, 32).astype(np.float32)

# warmup
model.predict(X[:1000], verbose=0)

start_cpu = process.cpu_times()
start_time = time.time()

y = model.predict(X, verbose=0)

end_time = time.time()
end_cpu = process.cpu_times()

# timing
total_time = end_time - start_time
latency = total_time / N
throughput = N / total_time

# cpu usage
cpu_time = (end_cpu.user + end_cpu.system) - (start_cpu.user + start_cpu.system)
cpu_util = cpu_time / total_time

# Threadripper PRO 7985WX
TDP = 350
cores = 64

power_per_core = TDP / cores
power_est = power_per_core * cpu_util

energy = power_est * total_time
energy_per_inf = energy / N

print("\n===== CPU RESULTS =====")
print("Total time:", total_time)
print("Latency:", latency)
print("Throughput:", throughput)
print("CPU utilization:", cpu_util)
print("Estimated power:", power_est, "W")
print("Energy per inference:", energy_per_inf, "J")
