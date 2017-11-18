﻿using System;
using System.Runtime.InteropServices;
using OptixCore.Library.Native;

namespace OptixCore.Library
{
    public abstract class OptixNode : IDisposable
    {
        public abstract void Validate();
        public abstract void Destroy();

        public virtual void CheckError(object result)
        {
            
        }

        protected internal Context mContext;
        protected internal IntPtr InternalPtr;

        protected OptixNode(Context context)
        {
            this.mContext = context;
        }

        protected void CheckError(RTresult result)
        {
            if (result != RTresult.RT_SUCCESS)
            {
                var message = IntPtr.Zero;
                Api.rtContextGetErrorString(mContext.InternalPtr, result, ref message);
                throw new OptixException($"Optix error : {Marshal.PtrToStringAnsi(message)} {GetType().Name}");
            }
        }

        public void Dispose()
        {
            Destroy();
        }
    }
}