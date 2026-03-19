import site
import os

path = os.path.join(
    r"C:\Users\yusuf\miniconda3\envs\codecarbon_bench\lib\site-packages\codecarbon\core\gpu.py"
)

with open(path, encoding="utf-8") as f:
    txt = f.read()

old = "return pynvml.nvmlDeviceGetTotalEnergyConsumption(self.handle)"
new = """try:
            return pynvml.nvmlDeviceGetTotalEnergyConsumption(self.handle)
        except Exception:
            return 0"""

if old in txt:
    txt = txt.replace(old, new)
    with open(path, "w", encoding="utf-8") as f:
        f.write(txt)
    print("Patched successfully.")
else:
    print("Already patched or line not found.")
