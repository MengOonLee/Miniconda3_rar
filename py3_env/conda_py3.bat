@echo on
call conda update --all -y
call conda upgrade --all -y
call conda clean --all -y
REM call conda env remove --name py3
REM call conda create --name py3 python=3.9 -y
call conda activate py3
call conda update --all -y
call conda env update --file py3_requirements.yml --prune
call conda update --all -y
call conda upgrade --all -y
call conda clean --all -y
call conda deactivate
echo "Completed"