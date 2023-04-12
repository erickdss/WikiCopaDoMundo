import "package:flutter/material.dart";
import "aluno.dart";

class AlunoDetalhe extends StatefulWidget {
  final Aluno aluno;

  const AlunoDetalhe({
    Key? key,
    required this.aluno,
  }) : super(key: key);

  @override
  _AlunoDetalheState createState() {
    return _AlunoDetalheState();
  }
}

class _AlunoDetalheState extends State<AlunoDetalhe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.aluno.nome),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.aluno.urlImage)),
            ),
            Text(widget.aluno.descricao),
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(7.0),
                    itemCount: widget.aluno.diciplinas.length,
                    itemBuilder: (BuildContext context, int index) {
                      final diciplina = widget.aluno.diciplinas[index];
                      return Text(
                          'Diciplina: ${diciplina.nome}\nNota: ${diciplina.nota}',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                              fontFamily: ''));
                    }))
          ],
        ),
      ),
    );
  }
}
