import "package:flutter/material.dart";
import "pais.dart";

class PaisDetalhe extends StatefulWidget {
  final Pais pais;

  const PaisDetalhe({
    Key? key,
    required this.pais,
  }) : super(key: key);

  @override
  _AlunoDetalheState createState() {
    return _AlunoDetalheState();
  }
}

class _AlunoDetalheState extends State<PaisDetalhe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pais.nome),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: NetworkImage(widget.pais.urlImage)),
            ),
            Text(widget.pais.descricao),
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(7.0),
                    itemCount: widget.pais.diciplinas.length,
                    itemBuilder: (BuildContext context, int index) {
                      final diciplina = widget.pais.diciplinas[index];
                      return Text(
                          'Pais: ${diciplina.pais}\nQuantidade de Titulos: ${diciplina.titulo}',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                              fontFamily: ''));
                    }))
          ],
        ),
      ),
    );
  }
}
