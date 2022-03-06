# working directory creation
mkdir /home/opc/nlp_root
cd /home/opc/nlp_root
mkdir brain
cd brain
# download brain files:
!wget --user ftpuser@protonix.hu  --password xxxxxxxx ftp://protonix.hu/public_ftp/ABB_Doc_220227_2_brain.model
!wget --user ftpuser@protonix.hu  --password xxxxxxxx ftp://protonix.hu/public_ftp/ABB_Doc_220227_2_brain.model.dv.vectors.np


# install environment
sudo yum install python3.8
sudo yum install virtualenv

#create environment
virtualenv -p /usr/bin/python3.8 /home/opc/nlp_root


cd /nlp_root
source /home/opt/nlp_root/bin/activate
python -m pip install pymongo
python -m pip install gensim
python -m pip install flask
