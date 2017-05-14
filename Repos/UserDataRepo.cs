
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibraryForEF
{
    class UserDataRepo : BaseRepo<UserData>, IRepo<UserData>
    {
        public UserDataRepo()
        {
            Table = Context.UserData;
        }

        public int Delete(int id)
        {
            Context.Entry(new UserData() { Id = id }).State = EntityState.Deleted;
            return SaveChanges();
        }

        public Task<int> DeleteAsync(int id)
        {
            Context.Entry(new UserData() { Id = id }).State = EntityState.Deleted;
            return SaveChangesAsync();
        }

        public UserData GetOneByName(string name)
        {
            foreach (UserData ent in Table.Where(ent => ent.Name == name))
            {
                return ent;
            }

            return null;
        }        
    }
}
