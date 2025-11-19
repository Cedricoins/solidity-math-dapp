"use client";

import { useState } from "react";
import { readContract } from "@wagmi/core";
import { config } from "@/wagmi";

const CONTRACT_ADDRESS = "0xTonAdresseDeContratDéployé"; // À CHANGER APRÈS DÉPLOIEMENT

// ABI minimal pour MathPow
const ABI = [
  {"inputs":[{"internalType":"uint256","name":"base","type":"uint256"},{"internalType":"uint256","name":"exponent","type":"uint256"}],"name":"pow","outputs":[{"internalType":"uint256"}],"stateMutability":"pure","type":"function"}
] as const;

export default function PowPage() {
  const [base, setBase] = useState("2");
  const [exp, setExp] = useState("10");
  const [result, setResult] = useState<string>("");

  const calculate = async () => {
    try {
      const res = await readContract(config, {
        address: CONTRACT_ADDRESS as `0x${string}`,
        abi: ABI,
        functionName: "pow",
        args: [BigInt(base), BigInt(exp)],
      });
      setResult(res.toString());
    } catch (e) {
      setResult("Erreur ou contrat non déployé");
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-900 to-indigo-900 flex items-center justify-center p-8">
      <div className="bg-white/10 backdrop-blur-xl rounded-3xl shadow-2xl p-12 max-w-lg w-full border border-white/20">
        <h1 className="text-5xl font-bold text-center mb-10">Puissance : xⁿ</h1>

        <input
          type="number"
          placeholder="Base"
          value={base}
          onChange={(e) => setBase(e.target.value)}
          className="w-full p-5 mb-6 rounded-xl bg-white/20 text-white placeholder-white/60 text-xl"
        />

        <input
          type="number"
          placeholder="Exposant"
          value={exp}
          onChange={(e) => setExp(e.target.value)}
          className="w-full p-5 mb-10 rounded-xl bg-white/20 text-white placeholder-white/60 text-xl"
        />

        <button
          onClick={calculate}
          className="w-full py-6 bg-gradient-to-r from-pink-600 to-purple-600 rounded-xl text-2xl font-bold hover:from-pink-700 hover:to-purple-700 transition shadow-lg"
        >
          Calculer
        </button>

        {result && (
          <div className="mt-10 text-center">
            <p className="text-2xl opacity-80">Résultat :</p>
            <p className="text-5xl font-bold mt-4 text-pink-400">{result}</p>
          </div>
        )}
      </div>
    </div>
  );
}
