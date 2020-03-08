using EngWords.Models.Context;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.IO;

namespace EngWords.Models.Repositories
{
    public interface IWordRepository { 
        IEnumerable<Word> GetWord();
        Word GetCurrentWord(Word obj);
        IEnumerable<Word> GetDesiredWord(string word, string lang);
    }

    public class WordRepository : IWordRepository
    {
        ApplicationDbContext context;
        public WordRepository(ApplicationDbContext context)
        {
            this.context = context;
        }

        public IEnumerable<Word> GetWord()
        {
            //using (StreamWriter sw = new StreamWriter(@"C:\Users\Futuricon\Desktop\urlsPath.txt"))
            //{
            //    List<Word> ls = context.Words.OrderBy(x => x.Eng).ToList();
            //    foreach (var item in ls)
            //    {
            //        sw.WriteLine(item.Eng + "\t" + item.Rus);
            //    }
            //}
            return context.Words.OrderBy(x=>x.Eng).ToList();
        }

        public Word GetCurrentWord(Word obj)
        {
            return context.Words.Where(x => x.Id == obj.Id).FirstOrDefault();
        }

        public IEnumerable<Word> GetDesiredWord(string word, string lang)
        {
            IEnumerable<Word> Collection;
            switch (lang)
            {
                case "0": Collection = context.Words.Where(x => x.Eng.Contains(word)).OrderBy(z=>z.Eng).ToList();
                    break;
                case "1": Collection = context.Words.Where(x => x.Rus.Contains(word)).OrderBy(z => z.Rus).ToList();
                    break;
                case "2": Collection = context.Words.Where(x => x.Uzb.Contains(word)).OrderBy(z => z.Uzb).ToList();
                    break;
                default:
                    Collection = null;
                    break;
            }
            return Collection;
        }
    }
}
