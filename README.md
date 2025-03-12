🚀 O que eu aprendi criando o meu primeiro APP
📂 Criação do Projeto Base
bash
Copiar
Editar
flutter create APP_frase-do-dia
🛠 Quando usar child e children
Widget	Usa child ou children?	Quando Usar?
Container	child	Para estilizar e conter apenas um widget dentro.
Column	children	Para empilhar widgets verticalmente.
Row	children	Para alinhar widgets horizontalmente.
Stack	children	Para sobrepor widgets, como camadas.
SingleChildScrollView	child	Para rolar um único widget, como uma tela longa.
ListView	children ou ListView.builder	Para listas de itens roláveis.
✏️ Formatação de Textos
O Text possui diversos estilos. Aqui está um exemplo de formatação:

dart
Copiar
Editar
Text(
  "lorem ipsum",
  textAlign: TextAlign.justify,
  style: TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    letterSpacing: 0,
    wordSpacing: 0,
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.solid,
    decorationColor: Colors.black,
    color: Colors.black,
  ),
),
🔘 Buttons
O TextButton é um botão simples, sem sombra, e com texto. Ele é mais discreto e é ideal para ações menos destacadas.

Exemplo de uso:

dart
Copiar
Editar
TextButton(
  onPressed: () {
    print("Botão pressionado!");
  },
  child: Text("Clique Aqui"),
);
📏 Espaçamentos
Os espaçamentos podem ser internos ou externos. O Padding é um tipo de espaçamento interno, enquanto o Margin é externo.

Padding:
dart
Copiar
Editar
Container(
  padding: EdgeInsets.all(16), // Adiciona 16 pixels de espaçamento interno
  child: Text("Texto com padding"),
);
Margin:
dart
Copiar
Editar
Container(
  margin: EdgeInsets.all(16), // Adiciona 16 pixels de espaçamento externo
  child: Text("Texto com margin"),
);
🧭 Alinhamentos
Os alinhamentos podem ser feitos com mainAxisAlignment, crossAxisAlignment e Center.

mainAxisAlignment
Controla o alinhamento ao longo do eixo principal (main axis) de um layout.

Column: Eixo principal é vertical (de cima para baixo).
Row: Eixo principal é horizontal (da esquerda para a direita).
Exemplo:

dart
Copiar
Editar
Column(
  mainAxisAlignment: MainAxisAlignment.center,  // Alinha os itens verticalmente no centro
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
);
crossAxisAlignment
Controla o alinhamento ao longo do eixo transversal (cross axis), que é perpendicular ao eixo principal.

Column: Eixo transversal é horizontal (da esquerda para a direita).
Row: Eixo transversal é vertical (de cima para baixo).
Exemplo:

dart
Copiar
Editar
Row(
  crossAxisAlignment: CrossAxisAlignment.center,  // Alinha os itens verticalmente no centro
  children: <Widget>[
    Icon(Icons.star),
    Icon(Icons.favorite),
    Icon(Icons.home),
  ],
);
Center
O Center() utiliza as propriedades mainAxisAlignment e crossAxisAlignment internamente, e sua principal função é centralizar seu filho tanto horizontalmente quanto verticalmente, no espaço disponível.

Exemplo:

dart
Copiar
Editar
Center(
  child: Text("Texto centralizado"),
);
Container não preenche a tela?
Se o Container não preenche completamente a tela, você pode definir o width para double.infinity:

dart
Copiar
Editar
Container(
  width: double.infinity, // Faz o container preencher toda a largura da tela
  child: Text("Texto com container"),
);
🖼️ Imagens
Para importar imagens, é necessário ir ao pubspec.yaml e adicionar o seguinte:

yaml
Copiar
Editar
assets:
  - images/logo.png
Onde "images" é a pasta onde a imagem está armazenada (ex: logo.png). Depois, basta adicionar a imagem ao código:

dart
Copiar
Editar
child: Image.asset("images/terra.jpg", fit: BoxFit.cover),
🏗️ Scaffold: O Esqueleto do Projeto
O Scaffold ajuda a organizar os componentes principais da tela e fornece os seguintes elementos comuns:

AppBar: A barra de navegação no topo da tela.
Body: O conteúdo principal da tela.
FloatingActionButton: Um botão flutuante geralmente usado para ações importantes do app.
Drawer: Menu de navegação lateral.
BottomNavigationBar: Barra de navegação na parte inferior.
BottomSheet: Área deslizante que aparece na parte inferior da tela.
Exemplo de uso:

dart
Copiar
Editar
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // Retira o lacre de debug
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Aplicativo", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Text("Conteúdo principal do app", style: TextStyle(fontSize: 40)),
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.all(16),
          color: Colors.amber,
          child: Row(
            children: <Widget>[
              Text("Texto 1"),
              Text("Texto 2"),
              Text("Texto 3"),
            ],
          ),
        ),
      ),
    ),
  );
}
🧑‍💻 Diferença entre StatelessWidget e StatefulWidget
StatelessWidget
O StatelessWidget é um tipo de widget imutável. Uma vez criado, ele não muda durante a execução do app.

Ideal para: Interfaces que não precisam de atualização ou alteração do estado.
Características: Não possui estado interno, ideal para conteúdo fixo.
Exemplo:

dart
Copiar
Editar
void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless Widget")),
      body: Center(
        child: Text("Este é um StatelessWidget"),
      ),
    );
  }
}
StatefulWidget
O StatefulWidget possui estado mutável. Ele pode ser alterado durante a execução do app. Quando o estado muda, o widget é reconstruído para refletir a nova aparência ou dados.

Ideal para: Widgets que precisam responder a interações do usuário.
Características: Possui estado mutável e é reconstruído quando o estado é alterado.
Exemplo:

dart
Copiar
Editar
void main() {
  runApp(MaterialApp(
    home: CounterScreen(),
  ));
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Widget")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Contador: $_counter", style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text("Incrementar"),
            ),
          ],
        ),
      ),
    );
  }
}
🔄 setState no Stateful
O setState permite alterar o estado de um StatefulWidget, o que causa a reconstrução do widget com as novas informações. Exemplo de alteração de estado:

dart
Copiar
Editar
TextButton(
  style: TextButton.styleFrom(backgroundColor: Colors.green),
  onPressed: () {
    setState(() {
      fraseAtual = _frases[Random().nextInt(_frases.length)];
    });
  },
  child: Text("Gerar Nova Frase"),
);
🎲 Random().nextInt()
A função Random().nextInt() gera um número aleatório. Quando combinada com a função nextInt em uma lista, permite acessar um item aleatório.

Exemplo:

dart
Copiar
Editar
_frases[Random().nextInt(_frases.length)];
