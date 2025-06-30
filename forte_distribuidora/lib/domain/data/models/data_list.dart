import 'package:forte_distribuidora/domain/data/models/product.dart';

List<Product> allProducts = [
  Product(
    name: 'Placa de Drywall',
    image: 'assets/images/drywall_boards.png',
    description: 'Placa de gesso acartonado para paredes e forros.',
    category: Category.sheet.name
  ),
  Product(
    name: 'Placa Glasroc',
    image: 'assets/images/glasroc_boards.png',
    description: 'Placa de gesso com véu de vidro, ultra-resistente à umidade, mofo, UV e fogo.',
    category: Category.sheet.name
  ),
  Product(
    name: 'Perfil F530',
    image: 'assets/images/f530-solo.webp',
    description: 'Canaleta de aço galvanizado para a estrutura de forros de drywall.',
    category: Category.metalFraming.name
  ),
  Product(
      name: 'Guia\n48 / 70 / 90',
      image: 'assets/images/guia.webp',
      description: 'Perfil metálico em formato de "U", componente da estrutura metálica do drywall, essencial para a fixação das chapas e a formação de paredes, forros ou outras estruturas, proporcionando o esqueleto para a construção a seco.',
      category: Category.metalFraming.name
  ),
  Product(
      name: 'Montante\n48 / 70 / 90',
      image: 'assets/images/montante.webp',
      description: 'Perfil metálico em formato de "U" com bordas, componente da estrutura metálica do drywall, essencial para a fixação das chapas e a formação de paredes, forros ou outras estruturas, proporcionando o esqueleto para a construção a seco.',
      category: Category.metalFraming.name
  ),
  Product(
    name: 'Cantoneira - cr2',
    image: 'assets/images/cr2.webp',
    description: 'Perfil metálico em formato de "L", empregado para aplicar junta seca e quinas.',
    category: Category.metalFraming.name
  ),
  Product(
    name: 'Tabica - cr3',
    image: 'assets/images/cr3.webp',
    description: 'Perfil metálico em formato de "cadeirinha" empregado em sistemas de drywall para criar um rebaixo no forro, permitindo a instalação de iluminação embutida ou outros detalhes arquitetônicos.',
    category: Category.metalFraming.name
  ),
  Product(
    name: 'Fita Telada',
    image: 'assets/images/fita_telada.png',
    description: 'Tela de fibra autoadesiva para juntas de drywall.',
    category: Category.tape.name
  ),
  Product(
    name: 'GN25\nPonta Agulha',
    image: 'assets/images/gn25-ponta-agulha.webp',
    description: 'Autoperfurante, cabeça trombeta e ponta agulha. Comum para fixar as chapas de gesso acartonado nos perfis metálicos leves de até 0,7 mm de espessura, como os montantes e guias, e possui cabeça trombeta que se encaixa perfeitamente na superfície da chapa.',
    category: Category.screws.name
  ),
  Product(
    name: 'GN25\nPonta Broca',
    image: 'assets/images/gn25-ponta-brocante.webp',
    description: 'Autoperfurante, cabeça trombeta e ponta brocante. Usado para fixar chapas de gesso acartonado em perfis metálicos um pouco mais espessos (geralmente acima de 0,7 mm e até 1 mm), dispensando a necessidade de pré-furação.',
    category: Category.screws.name
  ),
  Product(
    name: 'GN35\nPonta Agulha',
    image: 'assets/images/gn35-ponta-agulha.webp',
    description: 'Autoperfurante, cabeça trombeta e ponta brocante. Mais longo que o GN25, este parafuso de ponta agulha é ideal para fixar duas ou mais chapas de gesso acartonado sobre os perfis metálicos finos, garantindo maior profundidade e segurança na fixação.',
    category: Category.screws.name
  ),
  Product(
    name: 'Flangeado\n6 - 8',
    image: 'assets/images/flangeado.webp',
    description: 'Fixador versátil usado principalmente para ancorar perfis guia de drywall em pisos e tetos de alvenaria ou concreto (com buchas), além de fixar elementos em madeira e OSB, garantindo uma distribuição de carga eficiente.',
    category: Category.screws.name
  ),
  Product(
    name: 'Metal - Metal\nPonta Agulha',
    image: 'assets/images/metal-metal-ponta-agulha.webp',
    description: 'Projetado especificamente para unir um perfil metálico a outro, sendo comumente utilizado para fixar os montantes nas guias ou para pequenas emendas onde não há necessidade de grande poder de perfuração, ideal para perfis de baixa espessura.',
    category: Category.screws.name
  ),
  Product(
    name: 'Metal - Metal\nPonta Broca',
    image: 'assets/images/metal-metal-brocante.webp',
    description: 'Escolha ideal para unir perfis metálicos mais espessos entre si, ou para fixar elementos metálicos em estruturas de steel frame e metalons, pois ele perfura e rosqueia o metal em uma única operação.',
    category: Category.screws.name
  ),
  Product(
    name: 'Massa para Drywall',
    image: 'assets/images/massa_para_drywall.png',
    description: 'Pronta para uso, ideal para nivelar e dar acabamento em juntas e superfícies de Drywall.',
    category: Category.jointCompound.name
  ),
];

final List<Product> screwsList = [
  ...allProducts.where((value) =>
      value.category == Category.screws.name
)];

final List<Product> tapesList = [
  ...allProducts.where((value) =>
      value.category == Category.tape.name
)];

final List<Product> sheetsList = [
  ...allProducts.where((value) =>
      value.category == Category.sheet.name
)];

final List<Product> metalFramingList = [
  ...allProducts.where((value) =>
    value.category == Category.metalFraming.name
)];
final List<Product> jointCompoundsList = [
  ...allProducts.where((value) =>
  value.category == Category.jointCompound.name
  )];