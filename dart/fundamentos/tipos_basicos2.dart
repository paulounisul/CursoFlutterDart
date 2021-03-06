/* 
    - List
    - Set 
    - Map
*/

main() {
  //List aprovados = ['Ana', 'Carlos', 'Baniel', 'Rafael'];
  var aprovados = ['Ana', 'Carlos', 'Baniel', 'Rafael'];
  print(aprovados is List);

  print(aprovados);

  print(aprovados.elementAt(2));
  print(aprovados.indexOf('Baniel'));
  print(aprovados.length);

  //map telefones -> tambem pode ser usado.
  // indexado não aceita repetição na chave..
  var telefones = {
    'João': '+55 (11) 9785-4545',
    'Maria': '+55 (33) 9785-4545',
    'Pedro': '+55 (41) 7874-5454',
    'João': '+55 (11) 8888-8888',
  };

  print(telefones is Map);
  print(telefones);
  print(telefones[0]);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  //set times
  print('-----------------[Set]----------------------');
  var times = {'Flamengo', 'Vasco', 'São Paulo', 'Fortaleza', 424, bool};
  print(times is Set);
  times.add('Palmeiras'); //não permite repeticoes.
  times.add('Palmeiras');
  times.add('Palmeiras');
  times.add('Flamengo');
  print(times.length);
  print(times.first);
  print(times.last);
  print(times.elementAt(5) is String);
  print(times);
}
