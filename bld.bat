"C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v8.0\bin\nvcc.exe" -gencode=arch=compute_52,code=\"sm_52,compute_52\" --use-local-env --cl-version 2015 -ccbin "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\x86_amd64"  -I"c:\ProgramData\NVIDIA Corporation\OptiX SDK 4.1.1\include" -I"C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v8.0\include" -I"C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v8.0\include"     --keep-dir x64\Debug -maxrregcount=0  --machine 64 -ptx -cudart static  -o ScriptOutput\brdf_funcs.cu.ptx "G:\Depot\Source\OptixCore\OptixCore\OptixScripts\brdf_funcs.cu"