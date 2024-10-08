#!/bin/bash

# 定义基础URL
base_url="https://github.com/facefusion/facefusion-assets/releases/download/models-3.0.0"

# 定义文件名数组
files=(
    "open_nsfw"
    "styleganex_age"
    "live_portrait_feature_extractor"
    "live_portrait_motion_extractor"
    "live_portrait_generator"
    "live_portrait_eye_retargeter"
    "live_portrait_lip_retargeter"
    "live_portrait_stitcher"
    "codeformer"
    "gfpgan_1.4"
    "gpen_bfr_256"
    "gpen_bfr_512"
    "gpen_bfr_1024"
    "gpen_bfr_2048"
    "restoreformer_plus_plus"
    "ghost_256_unet_1"
    "ghost_256_unet_2"
    "ghost_256_unet_3"
    "inswapper_128"
    "inswapper_128_fp16"
    "simswap_256"
    "simswap_512_unofficial"
    "uniface_256"
    "ddcolor"
    "clear_reality_x4"
    "lsdir_x4"
    "real_hatgan_x4"
    "span_kendata_x4"
    "ultra_sharp_x4"
    "wav2lip"
    "wav2lip_gan"
    "fairface"
    "retinaface_10g"
    "scrfd_2.5g"
    "yoloface_8n"
    "2dfan4"
    "peppa_wutz"
    "fan_68_5"
    "dfl_xseg"
    "bisenet_resnet_34"
    "arcface_w600k_r50"
    "kim_vocal_2"
    "arcface_converter_ghost"
    "arcface_converter_simswap"
)

# 创建目标目录
target_dir=".assets/models"
mkdir -p "$target_dir"

# 下载文件
for file in "${files[@]}"; do
    for ext in "hash" "onnx"; do
        url="${base_url}/${file}.${ext}"
        echo "Downloading $url"
        curl -L "$url" -o "${target_dir}/${file}.${ext}"
    done
done

echo "All models downloaded successfully to $target_dir."
