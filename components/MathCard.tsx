import Link from "next/link";

export default function MathCard({ name, slug, icon }: { name: string; slug: string; icon: string }) {
  return (
    <Link href={`/math/${slug}`}>
      <div className="group relative bg-white/10 backdrop-blur-md border border-white/20 rounded-3xl p-10 text-center hover:bg-white/20 hover:scale-105 transform transition-all duration-300 shadow-2xl cursor-pointer">
        <div className="text-7xl mb-6 opacity-90">{icon}</div>
        <h3 className="text-2xl font-bold">{name}</h3>
        <div className="absolute inset-0 rounded-3xl bg-gradient-to-tr from-pink-500/20 to-purple-500/20 opacity-0 group-hover:opacity-100 transition-opacity duration-500 -z-10"></div>
      </div>
    </Link>
  );
}
