using EngWords.Models;
using EngWords.Models.Context;
using EngWords.Models.Repositories;
using Prism.Commands;
using Prism.Mvvm;
using Prism.Regions;
using System.Threading.Tasks;

namespace EngWords.ViewModels
{
    public class UpdateWordViewModel : BindableBase, INavigationAware
    {
        private string _engTxtUp;
        private string _rusTxtUp;
        private string _uzbTxtUp;
        private int _idTxtUp;

        private IRegionManager _regionManager;

        public string EngTxtUp { get { return _engTxtUp; } set { SetProperty(ref _engTxtUp, value); } }
        public string RusTxtUp { get { return _rusTxtUp; } set { SetProperty(ref _rusTxtUp, value); } }
        public string UzbTxtUp { get { return _uzbTxtUp; } set { SetProperty(ref _uzbTxtUp, value); } }
        public int IdTxtUp { get { return _idTxtUp; } set { SetProperty(ref _idTxtUp, value); } }

        public DelegateCommand UpdateWord { get; private set; }
        public DelegateCommand CancelUpdate { get; private set; }

        public UpdateWordViewModel(IRegionManager regionManager, IWordRepository wordRepository)
        {
            _regionManager = regionManager;
            UpdateWord = new DelegateCommand(UpdateWordForm);
            CancelUpdate = new DelegateCommand(CancelUpdateForm);
        }

        private void CancelUpdateForm()
        {
            _regionManager.Regions["ContentRegion2"].RemoveAll();
        }

        private void UpdateWordForm()
        {
            Task.Run(async () => await UpdateWordById());
            _regionManager.Regions["ContentRegion2"].RemoveAll();
            _regionManager.Regions["ContentRegion"].RemoveAll();
            _regionManager.RequestNavigate("ContentRegion", "WordsListView");
        }

        public async Task UpdateWordById() => await Task.Run(() =>
        {
            Word wr = new Word { Eng = EngTxtUp, Rus = RusTxtUp, Uzb = UzbTxtUp, Id = IdTxtUp };
            using (ApplicationDbContext context = new ApplicationDbContext())
            {
                //context.Words.Add(wr);
                context.Words.Update(wr);
                context.SaveChanges();
            }
        });

        public void OnNavigatedTo(NavigationContext navigationContext)
        {
            var word = navigationContext.Parameters["word"] as Word;
            if (word != null)
                EngTxtUp = word.Eng;
            RusTxtUp = word.Rus;
            UzbTxtUp = word.Uzb;
            IdTxtUp = word.Id;
        }

        public bool IsNavigationTarget(NavigationContext navigationContext)
        {
            var word = navigationContext.Parameters["word"] as Word;
            if (word != null)
                return EngTxtUp == word.Eng && RusTxtUp == word.Rus && UzbTxtUp == word.Uzb && IdTxtUp == word.Id;
            else
                return true;
        }

        public void OnNavigatedFrom(NavigationContext navigationContext)
        {

        }

    }
}
