#!/bin/bash

# 定义模型文件的下载 URL 数组
model_urls=(
    "https://github.com/facefusion/facefusion-assets/releases/download/models/2dfan4.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/arcface_simswap.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/arcface_w600k_r50.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/clear_reality_x4.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/codeformer.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/face_landmarker_68_5.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/face_occluder.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/face_parser.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/gender_age.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/gfpgan_1.4.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/inswapper_128.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/inswapper_128_fp16.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/open_nsfw.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/retinaface_10g.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/scrfd_2.5g.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/span_kendata_x4.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/voice_extractor.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/wav2lip_gan.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/yoloface_8n.onnx"
    "https://github.com/facefusion/facefusion-assets/releases/download/models/yunet_2023mar.onnx"
)

# 创建目标目录
target_dir=".assets/models"
mkdir -p "$target_dir"

# 遍历 URL 数组并下载每个模型文件到目标目录
for url in "${model_urls[@]}"; do
    echo "Downloading $url"
    curl -LO --output-dir "$target_dir" "$url"
done

echo "All models downloaded successfully to $target_dir."
