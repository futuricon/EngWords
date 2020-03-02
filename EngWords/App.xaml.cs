using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using EngWords.Models.Repositories;
using EngWords.Views;
using Prism.Ioc;
using Prism.Unity;

namespace EngWords
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : PrismApplication
    {
        protected override Window CreateShell()
        {
            return Container.Resolve<MainView>();
        }
        protected override void RegisterTypes(IContainerRegistry containerRegistry)
        {
            containerRegistry.RegisterForNavigation<WordsListView>();
            containerRegistry.RegisterForNavigation<UpdateWordView>();
            containerRegistry.Register<IWordRepository, WordRepository>();
        }
    }
}
