REM ### creating conda environment ###
set env_name=deepfake_camera
call conda create -y -n %env_name% python=3.7 git
call conda activate %env_name%

REM ### install PyTorch and CUDA ###
call conda install pytorch torchvision cudatoolkit=10.2 -c pytorch
call conda install -c 1adrianb face_alignment

REM ### install all other packages needed for the project ### 
call pip install -r src/requirements.txt
call pip install pytorch==1.8.0
call pip install torchvision==0.9.0

