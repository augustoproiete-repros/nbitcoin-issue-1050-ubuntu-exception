using System;
using NBitcoin;

namespace NBitcoinConsoleAppNet50
{
    class Program
    {
        static void Main(string[] args)
        {
            Environment.SetEnvironmentVariable("HOME", null, EnvironmentVariableTarget.Process);
            Environment.SetEnvironmentVariable("APPDATA", null, EnvironmentVariableTarget.Process);

            Console.WriteLine("---");
            Console.WriteLine("Generating NBitcoin Key");

            try
            {
                Console.WriteLine($"  Generated key => {GenerateKey()}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"ERROR: {ex.Message}");
                Console.WriteLine();
                Console.WriteLine(ex.ToString());
            }

            Console.WriteLine("---");
        }

        private static string GenerateKey()
        {
            var privateKey = new Key(); // generate a random private key
            var publicKey = privateKey.PubKey;

            return publicKey.GetAddress(ScriptPubKeyType.Legacy, Network.Main).ToString();
        }
    }
}
