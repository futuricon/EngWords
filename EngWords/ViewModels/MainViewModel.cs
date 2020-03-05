using EngWords.Models;
using EngWords.Models.Context;
using Prism.Commands;
using Prism.Mvvm;
using System;
using System.Threading.Tasks;
using System.Windows;
using System.Linq;
using System.Collections.Generic;
using System.Collections;
using Microsoft.EntityFrameworkCore;
using Prism.Regions;
using EngWords.Views;

namespace EngWords.ViewModels
{
    public class MainViewModel : BindableBase
    {
        private string _engTxtIn;
        private string _rusTxtIn;
        private string _uzbTxtIn;
        
        private string _engTxtInX;
        private string _rusTxtInX;
        private string _uzbTxtInX;

        private string _engLbOut;
        private string _rusLbOut;
        private string _uzbLbOut;

        private string _rLbOutRG;
        private string _lLbOutRG;

        private int temp = 0;

        public string EngTxtIn { get { return _engTxtIn; } set { SetProperty(ref _engTxtIn, value); } }
        public string RusTxtIn { get { return _rusTxtIn; } set { SetProperty(ref _rusTxtIn, value); } }
        public string UzbTxtIn { get { return _uzbTxtIn; } set { SetProperty(ref _uzbTxtIn, value); } }

        public string EngLbOut { get { return _engLbOut; } set { SetProperty(ref _engLbOut, value); } }
        public string RusLbOut { get { return _rusLbOut; } set { SetProperty(ref _rusLbOut, value); } }
        public string UzbLbOut { get { return _uzbLbOut; } set { SetProperty(ref _uzbLbOut, value); } }

        public string RLBOutFG { get { return _rLbOutRG; } set { SetProperty(ref _rLbOutRG, value); } }
        public string LLBOutFG { get { return _lLbOutRG; } set { SetProperty(ref _lLbOutRG, value); } }

        public DelegateCommand SaveWord { get; private set; }
        public DelegateCommand ShowTheRest { get; private set; }
        public DelegateCommand Randomize { get; private set; }
        public DelegateCommand OpenWordsList { get; private set; }

        public DelegateCommand OpenTestView { get; private set; }

        public Random rnd = new Random();
        public Random rndFG = new Random();
        private IRegionManager _regionManager;

        public MainViewModel(IRegionManager regionManager)
        {
            Randomize = new DelegateCommand(ShowRandomWord);
            SaveWord = new DelegateCommand(AddNewWord);
            ShowTheRest = new DelegateCommand(PaintFG);
            OpenWordsList = new DelegateCommand(ShowWordsList);
            OpenTestView = new DelegateCommand(OpenTestViewForm);
            _regionManager = regionManager;
        }

        private void OpenTestViewForm()
        {
            TestView ww = new TestView();
            ww.Show();
        }

        private void ShowWordsList()
        {
            _regionManager.RequestNavigate("ContentRegion", "WordsListView");
        }

        private void PaintFG()
        {
            RLBOutFG = "#DDFFFFFF";
            LLBOutFG = "#DDFFFFFF";
        }

        private void ShowRandomWord()
        {
            int tempx = rndFG.Next(2);
            RLBOutFG = "#00000000";
            LLBOutFG = "#DDFFFFFF";
            Task.Run(async () => await GetRandomWord());
        }

        private void AddNewWord()
        {
            if (_engTxtIn != null && _engTxtIn != "" && _rusTxtIn != null && _rusTxtIn != "" && _uzbTxtIn != null && _uzbTxtIn != "")
            {
                _engTxtInX = _engTxtIn;
                _rusTxtInX = _rusTxtIn;
                _uzbTxtInX = _uzbTxtIn;
                Task.Run(async () => await SaveWords());
                EngTxtIn = null;
                RusTxtIn = null;
                UzbTxtIn = null;
            }

            else { return; }
        }

        public async Task SaveWords() => await Task.Run(() =>
        {
            Word wr = new Word { Eng = _engTxtInX, Rus = _rusTxtInX, Uzb = _uzbTxtInX };
            using (ApplicationDbContext context = new ApplicationDbContext())
            {
                context.Words.Add(wr);
                context.SaveChanges();
            }
        });

        public async Task GetRandomWord() => await Task.Run(() =>
        {
            using (ApplicationDbContext context = new ApplicationDbContext())
            {
                Word randomword = GetRandomId();
                Word GetRandomId()
                {
                    int toSkip = rnd.Next(0, context.Words.Count());
                    var randomword = context.Words.Skip(toSkip).FirstOrDefault();

                    return randomword.Id != temp ? randomword : GetRandomId();
                }

                temp = randomword.Id;

                EngLbOut = randomword.Eng.ToString();
                RusLbOut = randomword.Rus.ToString();
                UzbLbOut = randomword.Uzb.ToString();
            }
        });

    }
}
