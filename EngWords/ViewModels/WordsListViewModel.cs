using EngWords.Models;
using EngWords.Models.Context;
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
using System.Linq;
using System.Windows;

namespace EngWords.ViewModels
{
    class WordsListViewModel : BindableBase
    {
        private string _wordToFind;
        private string _selectedLang;

        public string WordToFind { get { return _wordToFind; } set { SetProperty(ref _wordToFind, value); } }
        public string SelectedLang { get { return _selectedLang; } set { SetProperty(ref _selectedLang, value); } }

        public DelegateCommand<Word> EditWord { get; private set; }
        public DelegateCommand<Word> DeleteWord { get; private set; }
        public DelegateCommand CloseWordsList { get; private set; }
        public DelegateCommand FindWord { get; private set; }
        public IRegionManager _regionManager { get; }
        public IWordRepository iWorRepo { get; set; }
        public ObservableCollection<Word> _wordsCollection;
        public ObservableCollection<Word> WordsCollection { get => _wordsCollection; set { _wordsCollection = value; RaisePropertyChanged(); } }

        public WordsListViewModel(IRegionManager regionManager, IWordRepository wordRepo)
        {
            Task.Run(async () => await GetAllWords(wordRepo));
            DeleteWord = new DelegateCommand<Word>(DeleteWordForm);
            EditWord = new DelegateCommand<Word>(EditWordForm);
            CloseWordsList = new DelegateCommand(HideWordsList);
            FindWord = new DelegateCommand(FinWordFrom);
            _regionManager = regionManager;
            iWorRepo = wordRepo;
        }

        private async void FinWordFrom()
        {
            if (WordToFind != null && WordToFind !="")
            {
                WordToFind = WordToFind.ToLower();
                await Task.Run(() => { 
                    WordsCollection = new ObservableCollection<Word>(iWorRepo.GetDesiredWord(WordToFind, SelectedLang));
                });   
            }
            else
            {
                await Task.Run(() =>{
                    WordsCollection = new ObservableCollection<Word>(iWorRepo.GetWord());
                });
            }
        }

        private void EditWordForm(Word obj)
        {
            var parameters = new NavigationParameters();
            parameters.Add("word", obj);

            if (obj != null)
                _regionManager.RequestNavigate("ContentRegion2", "UpdateWordView", parameters);
            //_regionManager.RequestNavigate("ContentRegion", "UpdateWordView");
        }

        private void DeleteWordForm(Word word)
        {
            var result = MessageBox.Show("Are you shure you want to delete the word?", "Word deleting!", MessageBoxButton.YesNo, MessageBoxImage.Question);
            switch (result)
            {
                case MessageBoxResult.Yes:
                    using (ApplicationDbContext context = new ApplicationDbContext())
                    {
                        context.Words.Remove(word);
                        context.SaveChanges();
                        Task.Run(async () => await GetAllWords(iWorRepo));
                    }
                    break;
                default:
                    break;
            }
            
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
