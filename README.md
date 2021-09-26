| README.md |
|:---|

<h1 align="center">nbitcoin-issue-1050-ubuntu-exception</h1>
<div align="center">

Attempt to reproduce issue [MetacoSA/NBitcoin#1050](https://github.com/MetacoSA/NBitcoin/issues/1050).

</div>

> <sup>Reported by [@xclud](https://github.com/xclud) on August 13th 2021.</sup>
>
> ## Exception on Ubuntu 20.04
>
> I run the following code from the blockchain book:
>
> ```
> var privateKey = new Key(); // generate a random private key
> var publicKey = privateKey.PubKey;
>
> return publicKey.GetAddress(ScriptPubKeyType.Legacy, Network.Main).ToString();
> ```
>
> And i get the following exception:
>
> ```
> at NBitcoin.Bitcoin.InitSignet() in NBitcoin.dll:token 0x60002fa+0x0
> at NBitcoin.Network..cctor() in NBitcoin.dll:token 0x60006be+0x108
> --- End of inner exception stack trace ---
> at NBitcoin.Network.get_Main() in NBitcoin.dll:token 0x60006bf+0x0
> ```
>
> I tried `5.x.x` and `6.x.x` versions of the library and i get the same results.

---

_Copyright &copy; 2021 C. Augusto Proiete & Contributors - Provided under the [MIT License](LICENSE)._
