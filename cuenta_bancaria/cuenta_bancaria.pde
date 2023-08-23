float saldo = 1000.0;
PImage caja;


void setup() {
  size(687, 543);
  textAlign(CENTER);
  caja=loadImage("cajero.jpg");
}

void draw() {
  //background(220);
  image(caja,0,0);
  fill(0);
  textSize(30);
  text("1. Retirar dinero", width/2, height/2 - 20);
  text("2. Mostrar saldo", width/2, height/2 + 20);
  text("3. Depositar dinero", width/2, height/2 + 60);
}

void keyPressed() {
  if (key == '1') {
    float cantidad = parseFloat(input("Ingresa la cantidad a retirar:"));
    if (cantidad > 0 && cantidad <= saldo) {
      saldo -= cantidad;
      println("Retiro exitoso. Nuevo saldo: $" + saldo);
    } else {
      println("No tienes suficiente dinero o cantidad inválida.");
    }
  } else if (key == '2') {
    println("Saldo actual: $" + saldo);
  }
    else if (key == '3'){
      float deposito = parseFloat(input("Ingresa la cantidad a depositar:"));
      saldo += deposito;
      println("Saldo actual: $" + saldo);
    }
}

String input(String mensaje) {
  return javax.swing.JOptionPane.showInputDialog(mensaje);
}
