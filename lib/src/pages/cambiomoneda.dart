import 'package:flutter/material.dart';


class CambioMonedas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cambio de Monedas',
      home: CambioMonedasPage(),
    );
  }
}

class CambioMonedasPage extends StatefulWidget {
  @override
  _CambioMonedasPageState createState() => _CambioMonedasPageState();
}

class _CambioMonedasPageState extends State<CambioMonedasPage> {
  
List<String> monedas = ['Dólares', 'Euros'];
  List<String> tipoOperacion = ['Compra', 'Venta'];

  String monedaOrigen = 'Dólares';
  String operacionOrigen = 'Compra';
  String monedaDestino = 'Euros';
  String operacionDestino = 'Venta';

  TextEditingController cantidadController = TextEditingController();
  TextEditingController resultadoController = TextEditingController();

  // Tasas de cambio ficticias para el ejemplo
  double tasaCompraDolares = 24.6822;
  double tasaVentaDolares = 24.8056;
  double tasaCompraEuros = 25.2993;
  double tasaVentaEuros = 28.4024;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Monedas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  value: monedaOrigen,
                  items: monedas.map((String moneda) {
                    return DropdownMenuItem(
                      value: moneda,
                      child: Text(moneda),
                    );
                  }).toList(),
                  onChanged: (String? nuevaMoneda) {
                    setState(() {
                      monedaOrigen = nuevaMoneda!;
                    });
                  },
                ),
                DropdownButton(
                  value: operacionOrigen,
                  items: tipoOperacion.map((String operacion) {
                    return DropdownMenuItem(
                      value: operacion,
                      child: Text(operacion),
                    );
                  }).toList(),
                  onChanged: (String? nuevaOperacion) {
                    setState(() {
                      operacionOrigen = nuevaOperacion!;
                    });
                  },
                ),
                Text(
                  'L${operacionOrigen == 'Compra' ? tasaCompraDolares : tasaVentaDolares}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  value: monedaDestino,
                  items: monedas.map((String moneda) {
                    return DropdownMenuItem(
                      value: moneda,
                      child: Text(moneda),
                    );
                  }).toList(),
                  onChanged: (String? nuevaMoneda) {
                    setState(() {
                      monedaDestino = nuevaMoneda!;
                    });
                  },
                ),
                DropdownButton(
                  value: operacionDestino,
                  items: tipoOperacion.map((String operacion) {
                    return DropdownMenuItem(
                      value: operacion,
                      child: Text(operacion),
                    );
                  }).toList(),
                  onChanged: (String? nuevaOperacion) {
                    setState(() {
                      operacionDestino = nuevaOperacion!;
                    });
                  },
                ),
                Text(
                  'L${operacionDestino == 'Compra' ? tasaCompraEuros : tasaVentaEuros}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: cantidadController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Cantidad',
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    calcularCambio();
                  },
                  child: Text('Calcular Cambio'),
                ),
                ElevatedButton(
                  onPressed: () {
                    convertirADolares();
                  },
                  child: Text('Convertir a Dólares'),
                ),
                ElevatedButton(
                  onPressed: () {
                    convertirAEuros();
                  },
                  child: Text('Convertir a Euros'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: resultadoController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Resultado',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calcularCambio() {
    double cantidad = double.tryParse(cantidadController.text) ?? 0.0;
    double tasaOrigen = operacionOrigen == 'Compra'
        ? (monedaOrigen == 'Dólares' ? tasaCompraDolares : tasaCompraEuros)
        : (monedaOrigen == 'Dólares' ? tasaVentaDolares : tasaVentaEuros);
    double tasaDestino = operacionDestino == 'Compra'
        ? (monedaDestino == 'Dólares' ? tasaCompraDolares : tasaCompraEuros)
        : (monedaDestino == 'Dólares' ? tasaVentaDolares : tasaVentaEuros);

    double resultado = cantidad * (tasaDestino / tasaOrigen);

    setState(() {
      resultadoController.text = resultado.toStringAsFixed(4);
    });
  }

  void convertirADolares() {
    setState(() {
      monedaOrigen = 'Lempiras';
      operacionOrigen = 'Venta';
      monedaDestino = 'Dólares';
      operacionDestino = 'Compra';
      cantidadController.text = '';
      resultadoController.text = '';
    });
  }

  void convertirAEuros() {
    setState(() {
      monedaOrigen = 'Lempiras';
      operacionOrigen = 'Venta';
      monedaDestino = 'Euros';
      operacionDestino = 'Compra';
      cantidadController.text = '';
      resultadoController.text = '';
    });
  }
}