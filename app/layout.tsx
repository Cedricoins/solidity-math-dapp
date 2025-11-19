import type { Metadata } from "next";
import "./globals.css";
import { WagmiProvider } from 'wagmi';
import { config } from '@/wagmi';
import Header from "@/components/Header";

export const metadata: Metadata = {
  title: "20 Fonctions Mathématiques en Solidity",
  description: "Bibliothèque mathématique on-chain + interface Next.js",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="fr">
      <body className="bg-gradient-to-br from-purple-950 via-blue-950 to-indigo-950 text-white">
        <WagmiProvider config={config}>
          <Header />
          {children}
        </WagmiProvider>
      </body>
    </html>
  );
}
