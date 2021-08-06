@call conda activate deepfake_camera

@set CONFIG=src/config/vox-adv-256.yaml

@set /P cam_id="Pick the webcam id you want to use (typically "0"): "

@set PYTHONPATH=%PYTHONPATH%;%CD%/src
@call python main.py --config %CONFIG% --cam %cam_id% --relative --adapt_scale --no-pad --checkpoint vox-adv-cpk.pth.tar