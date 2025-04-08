function MudaTexto(el, texto){

    var texto1 = '<h1>Ação Geek</h1>';
    texto1 = texto1 + '<p>A ação Geek é um projeto social, de conscientização sobre a importância da reciclagem e, do descarte correto de lixo eletrônico.</p>'  +
    '<p>Unindo forças com as comunidades, escolas, estudantes e organizações sociais, a fim de estabelecer uma cultura permanente de descarte de materiais recicláveis. Visando melhorar a qualidade de vida, e a preservação do meio ambiente.</p>';
    
    var texto2 = '<h1>Campanha</h1>';
    texto2 = texto2 + '<p> A Campanha promovida pela Ação Geek, vai organizar dias de coletas, na cidade de Salto-SP, em parceria com Eco Pontos da cidade, que recolherão, o que for coletado, para o devido descarte.' +
    'Por meio das Redes Sociais do projeto, serão divulgados as datas e os pontos de coletas de pilhas e baterias usadas.</p>' +
    '<p> Você tem lixo eletreletrônico na sua casa? E não sabe como descartar? Junte-se a nós nessa missão e, leve suas pilhas e baterias usadas, a um dos pontos de coleta.</p>'
   '<p>Participe dessa  ação de cidadania.</p>';

    var texto3 = '<h1>Saiba mais</h1>';
    texto3 = texto3 + '<p>Você sabia que o lixo eletrônico está em todas as partes e, que quase tudo que nos cerca hoje em dia contêm partes eletrônicas e compostos químicos, que podem ser nocivos a natureza e a nossa saúde.</p>' +

    '<p>Computadores, aparelhos celulares, micronidas e quase tudo que vai na tomada, faz parte dos resíduos eletrônicos. Um tipo de lixo que não pode ser descartado na coleta comum, pois podem gerar até mesmo a contaminação do solo, da água e prejudicar o meio ambiente num geral </p>'  +

    '<p>Mas não se desespere, é possível nos organizar, para evitar  que esse problema aumente. É cada vez mais recorrentes ouvirmos falar a respeito das mudanças climática, o famoso aquecimento global; toda ação da sociedade, de certo modo, gera uma <strong>pegada</strong> no meio ambiente, que muitas vezes é prejudicial a Natureza.' +

    'Podemos evitar isso, tomando algumas iniciativas como:</p>' +
    '<p> - Cobrar das autoridades e governantes, que apliquem e fiscalizem, as leis de preservação ambiental, incluindo o descarte correto do lixo, e o cuidado com a polição gerada no dia a dia;</p>' +
    '<p> - Nos informando cada vez mais sobre o asunto, afinal, cuidar da natureza é cuidar também da preservação da vida humana.</p>' +
    '- Outras ações que podemos tomar, é repensar a forma como nós lhe damos com o consumo.'+
    ' Sabe aquele aparelho celular velho, que ainda funciona? Não o descarte em qualquer lugar, procure utiliza-lo por mais tempo, e caso realmente queira um aparelho novo, seria uma boa iniciativa, fazer a doação do aparelho que ainda funciona, ou o descarte em locais apropriados para esse tipo de material.</p>'+ 
    'Essas ideias vão além de produtos como celulares, serve para todos os eletrônicos que temos em casa, ficar mais tempo com eles, pode evitar de que parem em lixões, ou em locais inapropriados, que não tratam de forma correta esses produtos.</p><p>O mesmo vale para pilhas e baterias, não descarte esses materiais em lixeiras comuns, ao invés disso, guarde de forma segura em casa, até que possa entregar em locais que fazem a reciclagem e a separação segura desses materiais.</p>'+
    '<p>É sempre bom saber, para onde vai todo lixo que produzimos, pois depois da coleta de rua, eles não desaparecem e, precisam ser tradados de forma correta, para evitar problemas como: enchentes, doenças, e risco de vida a população, bem como a fauna e a flora, agravando o Aquecimento Global, que gera tantas catástrofes naturais. Vamos juntos contribuir para um mundo melhor, com Pegadas positivas no nosso planeta.</p>';
    

    var texto4 = '<h1>Gui</h1>';
    texto4 = texto4 + '<p>Gui é o nosso mascote, é ele que aparece nas redes sociais, trazendo dicas valiosas de como podemos preservar o meio ambiente. </p>' +
    '<p>Siga o Gui no Instagram e, fique por dentro das ações que serão realizadas.</p><p>Além disso, você também pode, mandar suas ideias e compartilhar suas experiências, participando de ações em prol da Natureza.</p>'+
    '<h3>@geekcoder804</h3>' +
    '<p>' +
    '<a href="https://www.instagram.com/geekcoder804/" target="_blank"> ' +
    '<img src="images/instagram.png" id="insta"></a></p>';

    var texto5 = '<h1>Sobre O Projeto</h1>';
    texto5 = texto5 + '<p>Esse projeto nasceu de um trabalho da disciplina Projeto de Extensão I - Engenharia de Computação, realizado por estudantes do 2° semestre de Engenharia da Computação da faculdade Anhanguera.<p/>' +
    '<p>Estamos em parceria com estabelecimentos, igrejas, escolas e Eco Pontos da cidade de Salto-SP, para a realização da campanha Ação Geek, de coleta de Pilhas e Baterias usadas.</p>';
    var image = document.getElementById("imagem");

    switch(texto) {
        case 1://Ação Geek
            document.getElementById(el).innerHTML=texto1;
            image.src = "images/ideia2.png";  
        break;
        case 2://campanha
            document.getElementById(el).innerHTML=texto2;
            image.src = "images/reciclagem1.png";    

        break

        case 3://Saiba mais
            document.getElementById(el).innerHTML=texto3;
            image.src = "images/saibamais.png";
        break

        case 4://mascote
            document.getElementById(el).innerHTML=texto4;
            image.src = "images/gui1.png";
        break;

        case 5:
            document.getElementById(el).innerHTML=texto5;
            image.src = "images/ideia2.png";

        break;

        default:
            document.getElementById(el).innerHTML=texto1;
            image.src = "images/ideia2.png";
    };
    
}
