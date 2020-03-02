using EngWords.Models;
using EngWords.Models.Context;
using EngWords.Models.Repositories;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace EngWords.ViewModels
{
    public class UpdateWordViewModel : BindableBase, INavigationAware
    {
        private string _engTxtUp;
        private string _rusTxtUp;
        private string _uzbTxtUp;

        public string EngTxtUp { get { return _engTxtUp; } set { SetProperty(ref _engTxtUp, value); } }
        public string RusTxtUp { get { return _rusTxtUp; } set { SetProperty(ref _rusTxtUp, value); } }
        public string UzbTxtUp { get { return _uzbTxtUp; } set { SetProperty(ref _uzbTxtUp, value); } }

        public DelegateCommand<Word> UpdateWord { get; private set; }
        public DelegateCommand CancelUpdate { get; private set; }

        public UpdateWordViewModel(IRegionManager regionManager, IWordRepository wordRepository)
        {
            UpdateWord = new DelegateCommand<Word>(UpdateWordFrom);
            CancelUpdate = new DelegateCommand(CancelUpdateFrom);
        }

        private void CancelUpdateFrom()
        {
            Task.Run(async () => await SaveWords());
        }

        private void UpdateWordFrom(Word obj)
        {
            
        }

        public async Task SaveWords() => await Task.Run(() =>
        {
            Word wr = new Word { Eng = EngTxtUp, Rus = RusTxtUp, Uzb = UzbTxtUp };
            using (ApplicationDbContext context = new ApplicationDbContext())
            {
                //context.Words.Add(wr);
                //context.Words.
                //context.SaveChanges();
            }
        });

        public void OnNavigatedTo(NavigationContext navigationContext)
        {
            var word = navigationContext.Parameters["word"] as Word;
            if (word != null)
                EngTxtUp = word.Eng;
                RusTxtUp = word.Rus;
                UzbTxtUp = word.Uzb;
        }
        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            var word = navigationContext.Parameters["word"] as Word;
            if (word != null)
                return EngTxtUp == word.Eng && RusTxtUp == word.Rus && UzbTxtUp == word.Uzb;
            else
                return true;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {

        }

    }
}
