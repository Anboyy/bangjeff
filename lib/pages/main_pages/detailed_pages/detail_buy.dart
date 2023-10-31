import 'package:bangjeff/pages/main_pages/detailed_pages/detail_pesanan.dart';
import 'package:flutter/material.dart';

class BuyDetail extends StatefulWidget {
  BuyDetail({Key? key}) : super(key: key);

  @override
  State<BuyDetail> createState() => _BuyDetailState();
}

class PaymentMethod {
  final String name;
  final List<String> options;
  String? selectedOption;

  PaymentMethod(this.name, this.options, this.selectedOption);
}

List<PaymentMethod> paymentMethods = [
  PaymentMethod('QRIS', ['BCA', 'DANA'], 'BCA'),
  PaymentMethod('E-Wallet', ['GoPay', 'OVO', 'DANA'], 'GoPay'),
  PaymentMethod('Convenience Store', ['Indomaret', 'Alfamart'], 'Indomaret'),
  PaymentMethod(
      'Virtual Account',
      ['BCA Virtual Account', 'Mandiri Virtual Account'],
      'BCA Virtual Account'),
  PaymentMethod('Transfer Bank', ['BCA', 'BRI'], 'BCA'),
  PaymentMethod('Bangjeff Wallet', ['Bangjeff'], 'Bangjeff'),
];

class _BuyDetailState extends State<BuyDetail> {
  String phoneNumber = '';
  String promoCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: Icon(Icons.refresh))
        ],
        title: const Text("Pilih Metode Pembayaran"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ...paymentMethods.map((method) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              method.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 8),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black54),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      method.selectedOption ??
                                          'Pilih Metode Pembayaran',
                                      style:
                                          TextStyle(color: Colors.deepPurple),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      _showPaymentMethodMenu(context, method);
                                    },
                                    child: Icon(Icons.arrow_drop_down),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        );
                      }).toList(),
                      Text(
                        "Kode Promo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.075,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (value) {
                            phoneNumber = value;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukan Kode Promo",
                          ),
                        ),
                      ),
                      Text(
                        "Nomor WhatsApp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.075,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (value) {
                            phoneNumber = value;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukan Nomor Whatsapp",
                          ),
                        ),
                      ),
                      Text(
                        "Bukti pembelian atau nota invoice akan kami kirimkan melalui WhatsApp",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedPesanan(),
                        ),
                      );
                    },
                    child: Text("Buy Now"),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void _showPaymentMethodMenu(BuildContext context, PaymentMethod method) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Modal hanya menyesuaikan dengan konten
      isDismissible: true, // Modal dapat dibuang dengan mengklik luar modal
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: method.options.map((value) {
              return ListTile(
                title: Text(value),
                trailing: Text("500.000"),
                onTap: () {
                  setState(() {
                    method.selectedOption = value;
                  });
                  Navigator.of(context).pop();
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
