import os
os.environ["CUDA_VISIBLE_DEVICES"] = ""  # hide GPU from TF and CodeCarbon

import time
import numpy as np
import tensorflow as tf
from tensorflow import keras
from codecarbon import EmissionsTracker

# ── Device check ──────────────────────────────
print(tf.config.list_physical_devices('GPU'))
print(tf.config.list_physical_devices('CPU'))
# ─────────────────────────────────────────────

np.random.seed(0)
tf.random.set_seed(0)

INPUT_DIM = 32
OUTPUT_DIM = 8

# Model definition
model = keras.Sequential([
    keras.layers.Input(shape=(INPUT_DIM,)),
    keras.layers.Dense(64, activation='relu'),
    keras.layers.Dense(32, activation='relu'),
    keras.layers.Dense(OUTPUT_DIM)
])

# Random weight initialization
for layer in model.layers:
    weights = layer.get_weights()
    if weights:
        new_weights = [np.random.randn(*w.shape).astype(np.float32) for w in weights]
        layer.set_weights(new_weights)

# Save model
model.save("mlp_model.keras")
print("Model created with random weights.")

# ── RAPL check ────────────────────────────────
try:
    from codecarbon.external.hardware import IntelRAPL
    rapl = IntelRAPL()
    print(f"RAPL enabled : YES ({rapl})")
except Exception as e:
    print(f"RAPL enabled : NO ({e})")

# ── Carbon + Performance measurement ──────────
BATCH_SIZE    = 512
NUM_BATCHES   = 50
TOTAL_SAMPLES = BATCH_SIZE * NUM_BATCHES

data = np.random.randn(BATCH_SIZE, INPUT_DIM).astype(np.float32)

tracker = EmissionsTracker(log_level="error")
tracker.start()
t_start = time.perf_counter()

for _ in range(NUM_BATCHES):
    model(data, training=False)

t_end     = time.perf_counter()
emissions = tracker.stop()  # kg CO2eq

elapsed    = t_end - t_start
throughput = TOTAL_SAMPLES / elapsed
latency_ms = (elapsed / TOTAL_SAMPLES) * 1000000000

print(f"\n── Performance ─────────────────────")
print(f"Total time     : {elapsed:.4f} s")
print(f"Throughput     : {throughput:.1f} samples/s")
print(f" latency  : {latency_ms:.2f} ns")