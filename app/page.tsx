import MathCard from "@/components/MathCard";

const mathFunctions = [
  { name: "Puissance x^n", slug: "pow", icon: "↑" },
  { name: "Racine carrée", slug: "sqrt", icon: "√" },
  { name: "Exponentielle e^x", slug: "exp", icon: "e^x" },
  { name: "Logarithme naturel", slug: "ln", icon: "ln" },
  { name: "Sinus", slug: "sin", icon: "sin" },
  { name: "Cosinus", slug: "cos", icon: "cos" },
  { name: "Tangente", slug: "tan", icon: "tan" },
  { name: "Factorielle", slug: "factorial", icon: "n!" },
  { name: "PGCD", slug: "gcd", icon: "gcd" },
  { name: "PPCM", slug: "lcm", icon: "lcm" },
  { name: "Log2", slug: "log2", icon: "log₂" },
  { name: "Log10", slug: "log10", icon: "log₁₀" },
  { name: "Exp modulaire", slug: "modexp", icon: "^ mod" },
  { name: "Abs", slug: "abs", icon: "|x|" },
  { name: "Min / Max", slug: "minmax", icon: "↕" },
  { name: "Clamp", slug: "clamp", icon: "[ ]" },
  { name: "Moyenne", slug: "avg", icon: "μ" },
  { name: "Nombre premier", slug: "prime", icon: "ℙ" },
  { name: "Fibonacci", slug: "fib", icon: "φ" },
  { name: "Coefficient binomial", slug: "binomial", icon: "C(n,k)" },
];

export default function Home() {
  return (
    <main className="min-h-screen">
      <div className="container mx-auto px-6 py-20">
        <h1 className="text-6xl font-bold text-center mb-6 bg-clip-text text-transparent bg-gradient-to-r from-pink-500 to-violet-500">
          20 Fonctions Mathématiques On-Chain
        </h1>
        <p className="text-xl text-center mb-16 text-center opacity-80">
          Chaque fonction est un contrat Solidity pur – teste-les directement sur le réseau !
        </p>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 xl:grid-cols-5 gap-8">
          {mathFunctions.map((f) => (
            <MathCard key={f.slug} {...f} />
          ))}
        </div>
      </div>
    </main>
  );
}
