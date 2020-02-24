using System;
using System.Collections.Generic;
using System.Text;

namespace EngWords.ViewModels
{
    public class MainViewModel
    {
        private int myVar;

        public int MyProperty
        {
            get { return myVar; }
            set { myVar = value; }
        }
    }
}
