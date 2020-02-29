using EngWords.Models.Context;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace EngWords.Models.Repositories
{
    public interface IWordRepository 
    {
        IEnumerable<Word> GetWord();
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
            return context.Words.ToList();
        }
    }
}
