echo [$(date)]: "START"

echo [$(date)]: "creating env with python 3.8 version"

conda create --prefix ./ml_env python=3.8 -y

echo [$(date)]: "creating env with python 3.8 version"

# Activate your Conda environment
conda activate /home/amankd777/mlops_firste/mlops_first_ever/ml_env
# source activate ./env

echo [$(date)]: "installing the dev requirements"

pip install -r requirements.txt

echo [$(date)]: "END"