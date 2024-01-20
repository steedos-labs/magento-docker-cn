# 初始化 /var/www/html 环境

# -f 参数判断 $file 是否存在
mnted_home_path="/pv_magento_mnted"
init_flag_file="$mnted_home_path/.config/magento/init_flag_file"
echo "check start"
if [ ! -f "$init_flag_file" ]; then
    # 解压缩
    
    echo "copy start"
    cp -rf /var/www/html/*.* $mnted_home_path
    echo "copy end"

    mkdir -p /pv_magento_mnted/.config/magento
    mkdir -p ~/.config/magento
    # 声明...
    echo "DON'T DELETE THIS FILE  | 警告： 不要删除此文件" > $init_flag_file
else
    echo "skip copy ...."
fi
echo "run end"