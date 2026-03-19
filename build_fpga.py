import hls4ml
from tensorflow import keras

# modeli yükle
model = keras.models.load_model("mlp_model.keras")

# hls config
config = hls4ml.utils.config_from_keras_model(
    model,
    granularity="name",
    default_precision="ap_fixed<16,6>"
)

for layer in config['LayerName']:
    if 'dense' in layer:
        config['LayerName'][layer]['ReuseFactor'] = 16
        config['LayerName'][layer]['Strategy'] = 'Latency'

# hls project oluştur
hls_model = hls4ml.converters.convert_from_keras_model(
    model,
    hls_config=config,
    output_dir="hls_project",
    backend="Vivado",
    part="xczu7ev-ffvc1156-2-e",
    clock_period=5
)

hls_model.compile()

# HLS synthesis
hls_model.build(csim=True, synth=True, vsynth=True)

print("FPGA synthesis finished.")

