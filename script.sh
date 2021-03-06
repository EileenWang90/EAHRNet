################################################################### Test ######################################################################
# simplebaseline resnet50
./tools/dist_test.sh configs/top_down/resnet/coco/res50_coco_256x192.py checkpoint/res50_coco_256x192-ec54d7f3_20200709.pth 1 --eval mAP
# Darknet HRNet
./tools/dist_test.sh configs/top_down/darkpose/coco/hrnet_w32_coco_256x192_dark.py checkpoint/hrnet_w32_coco_256x192_dark-07f147eb_20200812.pth 1 --eval mAP
# HRNet
./tools/dist_test.sh configs/top_down/hrnet/coco/hrnet_w32_coco_256x192.py checkpoint/hrnet_w32_coco_256x192-c78dce93_20200708.pth 1 --eval mAP
./tools/dist_test.sh configs/top_down/hrnet/coco/hrnet_w48_coco_256x192.py checkpoint/hrnet_w48_coco_256x192-b9e0b3ab_20200708.pth 1 --eval mAP

PORT=29501 ./tools/dist_test.sh configs/top_down/hrnet/coco/hrnet_w32_coco_256x192.py work_dirs/hrnet_w32_coco_256x192/best.pth 2 --eval mAP
PORT=29501 ./tools/dist_test.sh configs/top_down/hrnet/coco/hrnet_w32_coco_256x192_bottleneck.py work_dirs/hrnet_w32_coco_256x192_bottleneck/best.pth 2 --eval mAP

# Lite-HRNet
./tools/dist_test.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192.py checkpoint/litehrnet_18_coco_256x192.pth 1 --eval mAP
./tools/dist_test.sh configs/top_down/lite_hrnet/coco/litehrnet_30_coco_256x192.py checkpoint/litehrnet_30_coco_256x192.pth 1 --eval mAP
./tools/dist_test.sh configs/top_down/naive_litehrnet/coco/naive_litehrnet_18_coco_256x192.py checkpoint/naive_litehrnet_18_coco_256x192.pth 1 --eval mAP
./tools/dist_test.sh configs/top_down/naive_litehrnet/coco/wider_naive_litehrnet_18_coco_256x192.py checkpoint/wider_naive_litehrnet_18_coco_256x192.pth 1 --eval mAP

./tools/dist_test.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192.py work_dirs/litehrnet_18_coco_256x192/best.pth 1 --eval mAP
./tools/dist_test.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192_dark.py work_dirs/litehrnet_18_coco_256x192_dark/best.pth 1 --eval mAP
./tools/dist_test.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192_augment.py work_dirs/litehrnet_18_coco_256x192_augment/best.pth 2 --eval mAP

#******************************************* 384x288 ************************************************
./tools/dist_test.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_384x288.py checkpoint/litehrnet_18_coco_384x288.pth 3 --eval mAP

#EAHRNet
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192.py work_dirs/eahrnet_18_coco_256x192/epoch_250.pth 1 --eval mAP
#EAHRnet_ghost  ghost_fuse
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ghost.py work_dirs/eahrnet_18_coco_256x192_ghost/best.pth 3 --eval mAP
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ghost_fuse.py work_dirs/eahrnet_18_coco_256x192_ghost_fuse/best.pth 2 --eval mAP
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ghost_bottleneck.py work_dirs/eahrnet_18_coco_256x192_ghost_bottleneck/best.pth 2 --eval mAP

./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost.py work_dirs/eahrnet_26_coco_256x192_ghost/best_bottleneck_fuse.pth 4 --eval mAP

#******************************************* 384x288 ************************************************
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_384x288_ghost_fuse.py work_dirs/eahrnet_18_coco_384x288_ghost_fuse/best.pth 4 --eval mAP
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_384x288_ghost.py work_dirs/eahrnet_26_coco_384x288_ghost/best.pth 4 --eval mAP


#EAHRnet only CoordAttention
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ca.py work_dirs/eahrnet_18_coco_256x192_ca/best.pth 2 --eval mAP
#EAHRnet  augment+Ghost+CA
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_aug-ghost-ca.py work_dirs/eahrnet_18_coco_256x192_aug-ghost-ca/best.pth 4 --eval mAP

#******************************************* Augment ************************************************
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost_coarsedropout.py work_dirs/eahrnet_26_coco_256x192_ghost_coarsedropout/best.pth 4 --eval mAP
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost_gridmask.py work_dirs/eahrnet_26_coco_256x192_ghost_gridmask/best.pth 2 --eval mAP
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost_photometric.py  work_dirs/eahrnet_26_coco_256x192_ghost_photometric/best.pth 4 --eval mAP

#EAHRnet_ghost  ghost_fuse+CA
./tools/dist_test.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost_ca.py work_dirs/eahrnet_26_coco_256x192_ghost_ca/best.pth 4 --eval mAP

#********************************************* MPII *************************************************
./tools/dist_test.sh configs/top_down/lite_hrnet/mpii/litehrnet_18_mpii_256x256.py checkpoint/litehrnet_18_mpii_256x256.pth 4 --eval PCKh
./tools/dist_test.sh configs/top_down/eahrnet/mpii/eahrnet_18_mpii_256x256.py work_dirs/eahrnet_18_mpii_256x256/best.pth 4 --eval PCKh

#**************** Train
./tools/dist_train.sh configs/top_down/eahrnet/mpii/eahrnet_18_mpii_256x256.py 2 #train EG-HRNet


################################################################### Train ######################################################################
# HRNet
./tools/dist_train.sh configs/top_down/hrnet/coco/hrnet_w32_coco_256x192.py 1 --resume-from work_dirs/hrnet_w32_coco_256x192/epoch_10.pth
./tools/dist_train.sh configs/top_down/hrnet/coco/hrnet_w32_coco_256x192_bottleneck.py 1 

# Lite-HRNet
./tools/dist_train.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192.py 2  # --gpu-ids 4,5,6,7
./tools/dist_train.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192.py 4 --resume-from work_dirs/litehrnet_18_coco_256x192/epoch_210.pth

./tools/dist_train.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192_dark.py 1 
./tools/dist_train.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192_dark.py 2 --resume-from work_dirs/litehrnet_18_coco_256x192_dark/epoch_60.pth

./tools/dist_train.sh configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192_augment.py 4 

#EAHRnet onlyECA
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192.py 4 
#EAHRnet_ghost  only ghost_bottleneck   
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ghost_bottleneck.py 4 
#EAHRnet_ghost  ghost_fuse
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost.py 4
PORT=29501 ./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ghost_fuse.py 2
PORT=29501 ./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_30_coco_256x192_ghost_fuse.py 3
#EAHRnet_ghost  ghost_fuse+CA
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost_ca.py 4

#******************************************* 384x288 ************************************************
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_384x288_ghost_fuse.py 2
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_384x288_ghost.py 5

#******************************************* Augment ************************************************
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost_coarsedropout.py 4 
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost_gridmask.py 2 
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost_photometric.py 2 

#EAHRnet only CoordAttention
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ca.py 2 
#EAHRnet  augment+Ghost+CA
./tools/dist_train.sh configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_aug-ghost-ca.py 2

######################################################## Get the compulationaly complexity ######################################################
#??????????????????pretrained model?????????  ???????????????unexpected key in source state_dict
#resnet50
python tools/summary_network.py configs/top_down/resnet/coco/res101_coco_256x192.py --shape 256 192 
#HRNet
python tools/summary_network.py configs/top_down/hrnet/coco/hrnet_w32_coco_256x192.py --shape 256 192 
#HRNet ??????????????????
python tools/summary_network.py configs/top_down/augmentation/hrnet_w32_coco_256x192_photometric.py --shape 256 192  #??????config??????pretrain????????????????????????????????????

#liteHRNet
python tools/summary_network.py configs/top_down/lite_hrnet/coco/litehrnet_18_coco_256x192.py --shape 256 192

#EAHRnet only CoordAttention
python tools/summary_network.py configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ca.py --shape 256 192 
#EAHRnet only ghost_bottleneck
python tools/summary_network.py configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ghost_bottleneck.py --shape 256 192 
#EAHRnet ghost_bottleneck+fuse
python tools/summary_network.py configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_ghost_fuse.py --shape 256 192 
python tools/summary_network.py configs/top_down/eahrnet/coco/eahrnet_30_coco_256x192_ghost_fuse.py --shape 256 192 
#EAHRnet only ghost_fuse 363_2
python tools/summary_network.py configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost.py --shape 256 192

#EAHRnet  augment+Ghost+CA
python tools/summary_network.py configs/top_down/eahrnet/coco/eahrnet_18_coco_256x192_aug-ghost-ca.py  --shape 256 192 

#MobilenetV2/shufflenetV2??????backbone
python tools/summary_network.py configs/top_down/mobilenet_v2/coco/mobilenetv2_coco_256x192.py --shape 256 192 
python tools/summary_network.py configs/top_down/mobilenet_v2/coco/mobilenetv2_coco_384x288.py --shape 384 288 

python tools/summary_network.py configs/top_down/shufflenet_v2/coco/mobilenetv2_coco_256x192.py --shape 256 192 
python tools/summary_network.py configs/top_down/shufflenet_v2/coco/shufflenetv2_coco_384x288.py --shape 384 288 


################################################################### Demo ######################################################################
python demo/top_down_img_demo.py \
    configs/top_down/eahrnet/coco/eahrnet_26_coco_256x192_ghost.py \
    work_dirs/eahrnet_26_coco_256x192_ghost/best.pth \
    --img-root tests/data/coco/ --json-file tests/data/coco/test_coco.json --out-img-root demo/output_imgs/