import numpy as np
import tensorflow as tf
from tensorflow import keras

np.random.seed(0)
tf.random.set_seed(0)

INPUT_DIM = 32
OUTPUT_DIM = 8

# Model tanımı
model = keras.Sequential([
    keras.layers.Input(shape=(INPUT_DIM,)),
    keras.layers.Dense(64, activation='relu'),
    keras.layers.Dense(32, activation='relu'),
    keras.layers.Dense(OUTPUT_DIM)
])

# random weight initialize
for layer in model.layers:
    weights = layer.get_weights()
    if weights:
        new_weights = [np.random.randn(*w.shape).astype(np.float32) for w in weights]
        layer.set_weights(new_weights)

# model kaydet
model.save("mlp_model.keras")

print("Model created with random weights.")




