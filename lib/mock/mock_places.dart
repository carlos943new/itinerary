import 'package:travel_itinerary/models/place.dart';

const places = [
  Place(
    id: '1',
    name: 'Café Alameda',
    description:
        'A cozy café in the heart of Mérida, perfect for breakfast and a quiet afternoon coffee.',
    image: 'assets/images/cafe_alameda.jpg',
    category: 'coffee',
    address: 'Calle 47, Centro',
    rating: 4.7,
    openingHours: '7:00 AM - 9:00 PM',
  ),
  Place(
    id: '2',
    name: 'Catedral de Mérida',
    description:
        'One of the oldest cathedrals in the Americas, standing proudly on the main square.',
    image: 'assets/images/catedral.jpg',
    category: 'history',
    address: 'Calle 60 x 61 y 63, Centro',
    rating: 4.8,
    openingHours: '6:00 AM - 8:00 PM',
  ),
  Place(
    id: '3',
    name: 'Plaza Grande',
    description:
        'The lively main square of the city, surrounded by colonial buildings and shaded by laurel trees.',
    image: 'assets/images/plaza_grande.jpg',
    category: 'nature',
    address: 'Calle 60 x 61 y 63, Centro',
    rating: 4.8,
    openingHours: 'Open 24 hours',
  ),
  Place(
    id: '4',
    name: 'Paseo de Montejo',
    description:
        'A grand tree-lined avenue full of mansions, restaurants, and sculptures, perfect for a evening stroll.',
    image: 'assets/images/paseodemontejo.jpg',
    category: 'history',
    address: 'Paseo de Montejo, Centro',
    rating: 4.7,
    openingHours: 'Open 24 hours',
  ),
  Place(
    id: '5',
    name: 'Gran Museo del Mundo Maya',
    description:
        'A modern museum showcasing the history, art, and living culture of the Maya civilization.',
    image: 'assets/images/gran_museo_del_mundo_maya.jpg',
    category: 'culture',
    address: 'Calle 60 Norte 299E, Cordemex',
    rating: 4.7,
    openingHours: '8:00 AM - 5:00 PM',
  ),
  Place(
    id: '6',
    name: 'Mercado Lucas de Gálvez',
    description:
        'The city\'s bustling central market, great for local snacks, crafts, and fresh produce.',
    image: 'assets/images/mercado_lucas_de_galvez.jpg',
    category: 'shopping',
    address: 'Calle 56 x 67 y 69, Centro',
    rating: 4.3,
    openingHours: '6:00 AM - 6:00 PM',
  ),
  Place(
    id: '7',
    name: 'Parque de Santa Lucía',
    description:
        'A charming colonial park known for its arcades, live music, and weekend cultural events.',
    image: 'assets/images/parque_de_santa_lucia.jpg',
    category: 'nature',
    address: 'Calle 60 x 55 y 57, Centro',
    rating: 4.6,
    openingHours: 'Open 24 hours',
  ),
  Place(
    id: '8',
    name: 'La Chaya Maya',
    description:
        'A beloved restaurant serving traditional Yucatecan dishes like cochinita pibil and sopa de lima.',
    image: 'assets/images/la_chaya_maya.jpg',
    category: 'food',
    address: 'Calle 62 #481, Centro',
    rating: 4.6,
    openingHours: '7:00 AM - 11:00 PM',
  ),
  Place(
    id: '9',
    name: 'Los Almendros',
    description:
        'A classic spot said to be the birthplace of poc chuc, serving regional cuisine since the 1960s.',
    image: 'assets/images/los_almendros.jpg',
    category: 'food',
    address: 'Calle 50A #493, Centro',
    rating: 4.4,
    openingHours: '11:00 AM - 10:00 PM',
  ),
  Place(
    id: '10',
    name: 'Apoala',
    description:
        'A contemporary restaurant offering modern Oaxacan and Yucatecan flavors in an elegant setting.',
    image: 'assets/images/apoala.jpg',
    category: 'food',
    address: 'Calle 60 #471, Centro',
    rating: 4.7,
    openingHours: '1:00 PM - 11:00 PM',
  ),
  Place(
    id: '11',
    name: 'Casa de Montejo',
    description:
        'A 16th-century Plateresque mansion that now hosts a museum of colonial-era life.',
    image: 'assets/images/casa_de_montejo.jpg',
    category: 'culture',
    address: 'Calle 63 #506, Centro',
    rating: 4.5,
    openingHours: '10:00 AM - 7:00 PM',
  ),
  Place(
    id: '12',
    name: 'Palacio de Gobierno',
    description:
        'A stately government building featuring large murals by Fernando Castro Pacheco depicting Maya history.',
    image: 'assets/images/palacio_de_gobierno.jpg',
    category: 'history',
    address: 'Calle 61 x 60 y 62, Centro',
    rating: 4.7,
    openingHours: '8:00 AM - 8:00 PM',
  ),
  Place(
    id: '13',
    name: 'Monumento a la Patria',
    description:
        'An impressive sculpted monument on Paseo de Montejo that tells the story of Mexico in stone.',
    image: 'assets/images/monumento_a_la_patria.jpg',
    category: 'history',
    address: 'Paseo de Montejo x Av. Colón, Centro',
    rating: 4.7,
    openingHours: 'Open 24 hours',
  ),
  Place(
    id: '14',
    name: 'Parque Zoológico del Centenario',
    description:
        'A family-friendly zoo with native and exotic animals set among shaded gardens.',
    image: 'assets/images/parque_zoologico_del_centenario.jpg',
    category: 'nature',
    address: 'Calle 59 x 84 y Av. Itzáes, Centro',
    rating: 4.2,
    openingHours: '8:00 AM - 5:00 PM',
  ),
  Place(
    id: '15',
    name: 'Teatro Peón Contreras',
    description:
        'A beautiful early 20th-century theater hosting concerts, opera, and dance performances.',
    image: 'assets/images/teatro_peon_contreras.jpg',
    category: 'history',
    address: 'Calle 60 x 57, Centro',
    rating: 4.6,
    openingHours: '9:00 AM - 9:00 PM',
  ),
  Place(
    id: '16',
    name: 'Museo de la Gastronomía Yucateca',
    description:
        'A small museum and restaurant dedicated to the flavors, ingredients, and traditions of Yucatán.',
    image: 'assets/images/museo_gastronomia_yucateca.jpg',
    category: 'culture',
    address: 'Calle 62 #466, Centro',
    rating: 4.4,
    openingHours: '9:00 AM - 6:00 PM',
  ),
  Place(
    id: '17',
    name: 'Parque de la Ermita de Santa Isabel',
    description:
        'A peaceful park and colonial hermitage, a quiet escape from the busy city center.',
    image: 'assets/images/ermita_de_santa_isabel.jpg',
    category: 'nature',
    address: 'Calle 66 x 77 y 79, Centro',
    rating: 4.5,
    openingHours: '8:00 AM - 7:00 PM',
  ),
  Place(
    id: '18',
    name: 'Parque Centenario',
    description:
        'A large green space with lakes, walking paths, and playgrounds, popular on weekends.',
    image: 'assets/images/parque_centenario.jpg',
    category: 'nature',
    address: 'Av. Itzáes x Calle 59, Centro',
    rating: 4.4,
    openingHours: '6:00 AM - 8:00 PM',
  ),
  Place(
    id: '19',
    name: 'Hacienda Teya',
    description:
        'A restored hacienda offering traditional Yucatecan feasts in a beautiful historic setting.',
    image: 'assets/images/hacienda_teya.jpg',
    category: 'food',
    address: 'Carretera Mérida-Cancún Km 12',
    rating: 4.6,
    openingHours: '12:00 PM - 6:00 PM',
  ),
  Place(
    id: '20',
    name: 'Bazar García Rejón',
    description:
        'A colorful craft bazaar full of hammocks, guayaberas, hats, and handmade souvenirs.',
    image: 'assets/images/bazar_garcia_rejon.jpg',
    category: 'shopping',
    address: 'Calle 65 x 56 y 58, Centro',
    rating: 4.2,
    openingHours: '9:00 AM - 7:00 PM',
  ),
];
