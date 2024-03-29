/*
  class class_name {
    Properties (Instance Variables) (selesai)
    Constructor (selesai)
    Methods (Functions) (selesai)
    Getters and Setters
  }
*/

/*
  class RekeningBank{
    Properties
      - namaPemilik
      - namaBank
      - saldo
    Methods
      - cekSaldo()
      - transfer()
      - ambilSaldo()
  }
*/

void main() {
  RekeningBank rekeningPina = new RekeningBank();rekeningPina
  namaPemilik = 'Rapiana';
  rekeningPina.namaBank = 'BSI';
  rekeningPina.saldo = 10000000000;
  print(rekeningPina.namaPemilik);
  print(rekeningPina.namaBank);
  print(rekeningPina.saldo);
  rekeningPina.cekSaldo();
  print('---------------------');

  RekeningBank rekeningEka = new RekeningBank(
    namaPemilik: 'Eka Husein',
    namaBank: 'ATB',
    saldo: 5000000,
  );
  print(rekeningEka.saldo);
  rekeningEka.cekSaldo();
  print('---------------------');

  RekeningBank rekeningDian = new RekeningBank(
    namaPemilik: 'Dian Eka',
    namaBank: 'TAB',
    saldo: 20000000,
  );
  print(rekeningDian.getPemilik);
  print(rekeningDian.getBank);
  print(rekeningDian.saldo);
  rekeningDian.setNamaPemilik = 'Pina Dian';
  rekeningDian.setNamaBank = 'Bank Rakyat';
  rekeningDian.setSaldo = 50000000;
  print(rekeningDian.getPemilik);
  print(rekeningDian.getBank);
  print(rekeningDian.getSaldo);
  print('---------------------');

  RekeningBank rekeningVir = new RekeningBank.Vir(
    namaPemilik: 'rapiana',
    saldo: 200000,
  );
  print(rekeningVir.getBank);
}

class RekeningBank {
  String namaPemilik;
  String namaBank;
  int saldo;

  set setNamaPemilik(String nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String nama) {
    this.namaBank = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String get getPemilik {
    return namaPemilik;
  }

  String get getBank {
    return namaBank;
  }

  int get getSaldo {
    return saldo;
  }

  RekeningBank({this.namaPemilik, this.namaBank, this.saldo});
  RekeningBank.Vir({this.namaPemilik, this.namaBank = 'vIR', this.saldo});

  cekSaldo() {
    print('Saldo saat ini: $saldo');
  }

  transfer() {
    print('transfer');
  }

  ambilSaldo() {
    print('ambil saldo');
  }
}
