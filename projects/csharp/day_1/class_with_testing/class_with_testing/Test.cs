using NUnit.Framework;
using System;


namespace class_with_testing
{
    [TestFixture]
    public class BankAccountTest
    {
        private BankAccount BankAccount;

        [SetUp]
        public void setUp()
        {
            BankAccount = new BankAccount("Gaby", 100 ,"Current Account");
            Console.WriteLine("Test setup");
        }

        [Test]
        public void TestHasName()
        {
            Console.WriteLine("Test runs");
            Assert.AreEqual("Gaby", BankAccount.Name);
        }
    }
}
