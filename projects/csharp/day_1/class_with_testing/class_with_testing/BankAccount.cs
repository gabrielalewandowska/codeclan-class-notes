using System;
namespace class_with_testing
{
    public class BankAccount
    {
        //string name;
        //int amount;
        //string type; 

        public string Name
        {
            get;
            set;
        }

        public int Amount
        {
            get;
            set;
        }

        public string Type
        {
            get;
            set;
        }

        public BankAccount(string name, int amount, string type)
        {
            this.Name = name;
            this.Amount = amount;
            this.Type = type;
        }

    }
}
