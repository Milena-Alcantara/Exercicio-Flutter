import 'package:flutter/material.dart';
import 'Peca.dart';
import 'GuardaVolumes.dart';

void main() {
  Peca peca1 = Peca("Camiseta", "Azul");
  Peca peca2 = Peca("Calça", "Preta");

  GuardaVolumes guardaVolumes = GuardaVolumes();

  int codigo1 = guardaVolumes.guardarPecas([peca1, peca2]);

  print("Peças guardadas no código $codigo1:");
  guardaVolumes.mostrarPecas();

  int codigo2 = guardaVolumes.guardarPecas([Peca("Tênis", "Branco")]);

  print("\nPeças guardadas no código $codigo2:");
  guardaVolumes.mostrarPecas();

  print("\nMostrando peças pelo código $codigo1:");
  guardaVolumes.mostrarPecasPorNumero(codigo1);

  print("\nDevolvendo peças pelo código $codigo1:");
  guardaVolumes.devolverPecas(codigo1);
  print("\nMostrando peças pelo código $codigo1 após devolução:");
  guardaVolumes.mostrarPecasPorNumero(codigo1);
}

