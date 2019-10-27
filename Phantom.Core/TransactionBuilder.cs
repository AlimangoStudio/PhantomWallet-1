using Phantasma.Blockchain;

namespace Phantom.Core
{
    class TransactionBuilder
    {
        public Transaction TxBuilder(string nexus, string destName, byte[] script)
        {
            var tx = new Transaction(nexus,
                                     destName,
                                     script,
                                     DateTime.UtcNow + TimeSpan.FromMinutes(30),
                                     "PHT-0-5-2"); //TODO
            tx.Sign(keyPair);
            return tx;

        }
    }
}
