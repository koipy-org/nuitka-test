# 创建目标文件夹
target_dir="dist-info-files"
mkdir -p "$target_dir"

# 查找并移动所有 .dist-info 结尾的文件夹
for dir in *.dist-info/; do
    if [ -d "$dir" ]; then
        echo "Moving $dir to $target_dir"
        mv "$dir" "$target_dir/"
    fi
done