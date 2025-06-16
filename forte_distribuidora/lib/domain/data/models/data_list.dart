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
    image: 'assets/images/f530.png',
    description: 'Canaleta de aço galvanizado para a estrutura de forros de drywall.',
    category: Category.metalFraming.name
  ),
  Product(
    name: 'Fita Telada',
    image: 'assets/images/fita_telada.png',
    description: 'Tela de fibra autoadesiva para juntas de drywall.',
    category: Category.tape.name
  ),
  Product(
    name: 'GN25',
    image: 'assets/images/gn25.png',
    description: 'Autoperfurante, cabeça trombeta e ponta agulha.',
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
  value.category == Category.metalFraming.name
  )];