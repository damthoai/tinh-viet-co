﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace UKPI.Core
{
    public interface IScheduler
    {
        void Start();
        void Stop();
    }
}
