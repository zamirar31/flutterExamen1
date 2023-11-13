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

  // Lista de monedas disponibles
  List<String> monedas = ['Dólar', 'Euro'];
  List<String> compraventa = ['Compra', 'Venta'];
  
  // Valor seleccionado por el usuario
  String monedaSeleccionada = 'Dólar';
  String compraventaSeleccionada = 'Compra';

  // Controladores para los campos de texto
  TextEditingController cantidadController = TextEditingController();
  TextEditingController resultadoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Monedas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton(
              value: monedaSeleccionada,
              items: monedas.map((String moneda) {
                return DropdownMenuItem(
                  value: moneda,
                  child: Text(moneda),
                );
              }).toList(),
              onChanged: (String? nuevaMoneda) {
                setState(() {
                  monedaSeleccionada = nuevaMoneda!;
                });
              },
            ),

            DropdownButton(
              value: compraventaSeleccionada,
              items: compraventa.map((String compraventa) {
                return DropdownMenuItem(
                  value: compraventa,
                  child: Text(compraventa),
                );
              }).toList(),
              onChanged: (String? nuevaCompraVenta) {
                setState(() {
                  compraventaSeleccionada = nuevaCompraVenta!;
                });
              },
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
            ElevatedButton(
              onPressed: () {
                calcularCambio();
              },
              child: Text('Calcular Cambio'),

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
   // double tipocv = double.tryParse(cantidadController.text) ?? 0.0;
    double tipoCambio=0;


    if (monedaSeleccionada == 'Dólar' && compraventaSeleccionada == 'Compra') {
      tipoCambio = 24.6822;
    } 
    if (monedaSeleccionada == 'Dólar' && compraventaSeleccionada == 'Venta'){
      tipoCambio = 24.8056;
    }
    if (monedaSeleccionada == 'Euro' && compraventaSeleccionada == 'Compra'){
      tipoCambio = 25.2993;
    }
    if (monedaSeleccionada == 'Euro' && compraventaSeleccionada == 'Venta'){
      tipoCambio = 28.4024;
    }
    

    // Calcular el cambio
    double resultado = cantidad * tipoCambio;

    // Actualizar el campo de texto del resultado
    setState(() {
      resultadoController.text = resultado.toStringAsFixed(4);
    });
  }
}