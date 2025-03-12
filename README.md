# O que eu aprendi criando o meu primeiro APP

## Criação do projeto base:

`Flutter create APP_frase-do-dia`

## Quando usar child e children: 

| Widget                | Usa `child` ou `children`? | Quando Usar?                                                |
|-----------------------|----------------------------|-------------------------------------------------------------|
| **Container**          | `child`                    | Para estilizar e conter **apenas um** widget dentro.         |
| **Column**             | `children`                 | Para empilhar widgets **verticalmente**.                     |
| **Row**                | `children`                 | Para alinhar widgets **horizontalmente**.                    |
| **Stack**              | `children`                 | Para sobrepor widgets, como camadas.                         |
| **SingleChildScrollView** | `child`                | Para rolar um único widget, como uma tela longa.             |
| **ListView**           | `children` ou `ListView.builder` | Para listas de itens roláveis.                         |


## Formatação de textos: 
o `Text` possui diversos estilos, aqui vai alguns: 
`       Text(
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
 ),`

## Buttons: 
O TextButton é um botão simples, sem sombra, e com texto. Ele é mais discreto e é ideal para ações menos destacadas.

`TextButton(
  onPressed: () {
    print("Botão pressionado!");
  },
  child: Text("Clique Aqui"),
);`


## Espaçamentos: 
Os espaçamentos podem ser internos ou externos, o `Padding` é um tipo de espaçamento interno, já o `Marging` é externo

### Padding: 

`Container(
  padding: EdgeInsets.all(16), // Adiciona 16 pixels de espaçamento interno
  child: Text("Texto com padding"),
);`

### Marging: 
`Container(
  margin: EdgeInsets.all(16), // Adiciona 16 pixels de espaçamento externo
  child: Text("Texto com margin"),
);
`
## Alinhamentos:
os alinhamentos podem ser , `mainAxisAlignment` ,`crossAxisAlignment` e `Center`

### mainAxisAlignment
O mainAxisAlignment controla o alinhamento ao longo do eixo principal (ou main axis) de um layout.

Em um Column, o eixo principal é vertical (de cima para baixo).
Em um Row, o eixo principal é horizontal (da esquerda para a direita).

MainAxisAlignment.start: Alinha os itens no início do eixo principal.
MainAxisAlignment.end: Alinha os itens no final do eixo principal.
MainAxisAlignment.center: Alinha os itens no centro do eixo principal.
MainAxisAlignment.spaceBetween: Espaça os itens igualmente, deixando o máximo de espaço possível entre eles, mas sem espaço no início e no final.
MainAxisAlignment.spaceAround: Espaça os itens igualmente, deixando um espaço igual antes do primeiro item, entre os itens e após o último item.
MainAxisAlignment.spaceEvenly: Espaça os itens igualmente, com a mesma distância antes do primeiro item, entre os itens e depois do último item.

`Column(
  mainAxisAlignment: MainAxisAlignment.center,  // Alinha os itens verticalmente no centro
  children: <Widget>[
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
);`

### crossAxisAlignment
O crossAxisAlignment controla o alinhamento ao longo do eixo transversal (ou cross axis), que é perpendicular ao eixo principal.

Em um Column, o eixo transversal é horizontal (da esquerda para a direita).
Em um Row, o eixo transversal é vertical (de cima para baixo).

CrossAxisAlignment.start: Alinha os itens no início do eixo transversal.
CrossAxisAlignment.end: Alinha os itens no final do eixo transversal.
CrossAxisAlignment.center: Alinha os itens no centro do eixo transversal.
CrossAxisAlignment.stretch: Expande os itens para ocupar toda a largura (em um Column) ou altura (em um Row).
CrossAxisAlignment.baseline: Alinha os itens de acordo com sua linha base (geralmente usado para textos).

`Row(
  crossAxisAlignment: CrossAxisAlignment.center,  // Alinha os itens verticalmente no centro
  children: <Widget>[
    Icon(Icons.star),
    Icon(Icons.favorite),
    Icon(Icons.home),
  ],
);`

### Center
O Center() utiliza as propriedades mainAxisAlignment e crossAxisAlignment internamente, e sua principal função é centralizar seu filho tanto horizontalmente quanto verticalmente, no espaço disponível.
`Center(
  child: Text("Texto centralizado"),
);`

### O container nao preenche completamente o espaçamento da tela e agora? 
Caso isso venha a ocorrer, é possivel que o crossAxisAlignment não esteja funcionando como planejado, então basta escrever abaixod o `Container` o `width: double.infinity`. Isso vai fazer com que o `Container` preencha 100% da tela.


## Imagens: 
Para importar imagens é necessario ir ao `pubspec.yaml` na onde esta com as observações a respeito dos assets e escrever: 

` assets:
    - images/logo.png`

onde "images" significa a pasta onde esta armazenada a imagem (logo.png), com isso feito basta adicionar a imagem ao código

`   child: Image.asset("images/terra.jpg", fit: BoxFit.cover)`

## Escaffold: o esqueleto do projeto
O Scaffold ajuda a organizar os componentes principais da tela e fornece os seguintes elementos comuns:

AppBar: A barra de navegação no topo da tela (geralmente usada para exibir o título do app, ícones de ação e navegação).
Body: O conteúdo principal da tela (geralmente é o maior espaço da tela e onde você coloca a maioria dos widgets).
FloatingActionButton: Um botão flutuante geralmente usado para ações importantes do app (exemplo: adicionar algo novo).
Drawer: Um menu de navegação lateral (geralmente usado para navegar entre diferentes telas do app).
BottomNavigationBar: Uma barra de navegação na parte inferior da tela para troca entre diferentes seções do app.
BottomSheet: Uma área deslizante que aparece na parte inferior da tela (geralmente usada para mostrar mais opções ou informações adicionais).

`void main() {
   runApp(
     MaterialApp(
     debugShowCheckedModeBanner: false, -- Retira aquele lacre de debug do app
       home: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.green,
           title: Text(
             "Aplicativo",
             style: TextStyle(fontWeight: FontWeight.bold),
           ),
         ),
         body: Padding(
           padding: EdgeInsets.all(16),
           child: Text(
             "conteudo principal do app",
             style: TextStyle(fontSize: 40),
           ),
         ),
         bottomNavigationBar: BottomAppBar(
           padding: EdgeInsets.all(16),
           color: Colors.amber,
           child: Row(
             children: <Widget>[
               Text("texto 1"),
               Text("texto 2"),
               Text("texto 3"),
             ],
           ),
         ),
       ),
     ),
   );`

## Diferença entre  StatelessWidget e StatefulWidget 
### Stateless: 
O StatelessWidget é um tipo de widget que não tem estado. Isso significa que uma vez que ele é criado, ele não muda durante a execução do app. Ou seja, ele é imutável e não mantém informações sobre o seu próprio estado, sendo ideal para casos onde o conteúdo não precisa ser alterado após a criação.

📌 Características do StatelessWidget:
Não tem estado interno.
Ideal para UI que não muda, como textos fixos ou imagens.
Uma vez renderizado, o widget não altera sua aparência ou dados sem uma nova reconstrução do widget.

`void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}`

`class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless Widget")),
      body: Center(
        child: Text("Este é um StatelessWidget"),
      ),
    );
  }
}`

### Stateful
O StatefulWidget é um tipo de widget que tem estado. Isso significa que ele pode mudar durante a execução do app, porque ele tem uma instância de estado que pode ser alterada. Quando o estado muda, o widget é reconstruído para refletir a nova aparência ou dados.

📌 Características do StatefulWidget:
Possui um estado mutável que pode ser alterado ao longo do tempo.
Ideal para widgets que precisam responder a interações do usuário, como botões, campos de texto ou animações.
O estado é armazenado em uma classe separada chamada State, que gerencia a lógica de como o widget deve ser exibido.

`void main() {
  runApp(MaterialApp(
    home: CounterScreen(),
  ));
}`

`class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}`

`class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0; // Estado que pode mudar`

  `void _incrementCounter() {
    setState(() {
      _counter++; // Atualiza o estado (aumenta o contador)
    });
  }`

  `@override
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
}`

## SetState no stateful: 
Graças ao stateful o botão é permitido fazer alterção de estado como por exemplo: 

` TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  setState(() {
                    fraseAtual = _frases[Random().nextInt(_frases.length)];
                  });
                },`

## Random().nextInt()
A função random permite buscar um numero aleatorio, combinado com o nextInt me permite fornecer a quantidade de números aleatorio, 
`Random().nextInt(10)` aqui eu estou buscando um numero aleatorio de 0 a 10
`_frases[Random().nextInt(_frases.length);` Utilizado no app frases do dia, me permite buscar um numero indice aleatorio da minha lista de frases.




 
