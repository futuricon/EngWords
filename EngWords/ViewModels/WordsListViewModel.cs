using EngWords.Models;
using EngWords.Models.Repositories;
using EngWords.Views;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Threading;

namespace EngWords.ViewModels
{
    class WordsListViewModel : BindableBase
    {
        public DelegateCommand CloseWordsList { get; private set; }
        public IRegionManager _regionManager { get; }

        public ObservableCollection<Word> _wordsCollection;
        public ObservableCollection<Word> WordsCollection { get => _wordsCollection; set { _wordsCollection = value; RaisePropertyChanged(); } }

        public WordsListViewModel(IRegionManager regionManager, IWordRepository wordRepo)
        {
            Task.Run(async () => await GetAllWords(wordRepo));
            CloseWordsList = new DelegateCommand(HideWordsList);
            _regionManager = regionManager;
        }
        public async Task GetAllWords(IWordRepository wordRepo) => await Task.Run(() =>
        {
            WordsCollection = new ObservableCollection<Word>(wordRepo.GetWord());
        });

        private async void HideWordsList()
        {
            await Task.Delay(300); //for correct animation !)
            _regionManager.Regions["ContentRegion"].RemoveAll();
        }

    }
}
