

class Illness {

  late int dolorAbdonminal;
  late int gripe;
  late int fiebre;
  late int catarro;
  late int perdidaPeso;
  late int inlamacionGarganta;
  late int difRespiar;
  late int salivar;
  late int respRapidas;
  late int tosPer;
  late int ronquera;
  late int mocoflema;
  late int dolPecho;
  late int dolCabeza;
  late int fatiga;
  late int nauseas;

  late int alimentacion;
  late int genero;
  late int antecedentes;
  late int edad;
  late int raza;
  late int cirugiaPrev;
  late int tabaco;
  late int alcohol;
  late int riesgo;
  late int anemia;
  late int acloridria;
  late int contextura;
  late int acidez;
  late int tratamiento;


  String resultado(List<int> _datos){

    String resultado = '';

    if(_datos[0]==1 && _datos[3]==0 && _datos[11]==0 && _datos[14] == 2 ){
      print(_datos);
      resultado = 'Enfermedad respiratoria Leve;Beber líquidos en abundancia';
    }
    if(_datos[0] == 2 && _datos[3]==0 && _datos[11]==0 && _datos[4]==0){
      resultado =  'Enfermedad Respiratoria Grave;Dosis altas de esteroides para reducir la inflamación pulmonar. Oxígeno, soporte respiratorio (ventilación mecánica) o terapia de tórax';
    }
    if(_datos[0] == 2 && _datos[3]==0 && _datos[11]==0 && _datos[2]==0){
      resultado =  'Enfermedad Respiratoria Cronica;Abandonar del hábito tabáquico y la adopción de hábitos saludables generales como seguir una alimentación equilibrada y realizar de manera regular actividad física. También es importante evitar ambientes que irriten las vías aéreas como zonas con humos, la contaminación, bajas temperaturas';
    }
    if(_datos[0] == 2 && _datos[3]==0 && _datos[11]==0 && _datos[18]==1){
      resultado =  'Enfermedad Respiratoria Bronquitis;fármacos broncodilatadores, que contribuyen a relajar y abrir las vías aéreas en los pulmones';
    }
    if(_datos[6] == 3 && _datos[9]==2 && _datos[4]==1 && _datos[15]==2){
      resultado =  'Enfermedad Respiratoria Neumonia;Utilizar antibióticos en función del paciente a tratar, que puede ser empírico (no se conoce el germen causal) o específico si se ha reconocido el germen';
    }
    if(_datos[16] == 2 && _datos[3]==0 && _datos[1]==0 && _datos[11]==2){
      resultado =  'Enfermedad Respiratoria Tuberculosis;Administrar fármacos antituberculosos durante un periodo prolongado, que suele ser de 6 meses';
    }
    if(_datos[0] == 0 && _datos[3]==1 && _datos[18]==1 && _datos[23]==3){
      resultado =  'Enfermedad Respiratoria Asma;Medicamento de acción rápida, como la adrenalina, corticoides, oxigenoterapia, nebulizador';
    }
    if(_datos[18] == 2 && _datos[3]==0 && _datos[11]==0 && _datos[0]==2){
      resultado =  'Enfermedad Respiratoria Anginas;Los antihistamínicos son una de las principales opciones de tratamiento para la rinitis alérgica. En algunos de estos fármacos se ha estudiado la presencia de efectos antiinflamatorios, que pueden representar una ventaja adicional, especialmente en el control de la congestión nasal';
    }
    if(_datos[1] == 0 && _datos[3]==0 && _datos[15]==2 && _datos[24]==2){
      resultado =  'Enfermedad Respiratoria Faringitis;Hacer gárgaras varias veces al día con agua tibia con sal (1/2 cucharadita de sal en 1 taza de agua)';
    }
    if(_datos[20] == 2 && _datos[24]==2 && _datos[3]==0 && _datos[14]==3){
      resultado =  'Enfermedad Respiratoria Fiebre del Heno;Tomar antihistamínicos (antagonistas de la alergia) como la cetirizina o loratidina, para reducir la reacción alérgica';
    }
    if(_datos[16] == 2 && _datos[3]==1 && _datos[29]==3 && _datos[17]==2){
      resultado =  'Enfermedad Respiratoria Hipertension Pulmonar;Realizar una vasodilatación, pero se necesitan realizar estudios previos para conocer si el paciente responderá al tratamiento';
    }
    if(_datos[0] == 2 && _datos[3]==0 && _datos[11]==0 && _datos[14]==2){
      resultado =  'Enfermedad Respiratoria Neoplasias Pumonares;El cáncer de pulmón necesita de una cirugía, radioterapia y quimioterapia, solas o combinadas, dependiendo según el estado del cáncer';
    }
    if(_datos[21] == 0 && _datos[24]==0 && _datos[15]==1 && _datos[14]==1){
      resultado =  'Enfermedad Respiratoria Edema Pulmonar;Esta enfermedad debe ser tratada rápidamente por un médico';
    }
    if(_datos[2] == 1 && _datos[3]==1 && _datos[4]==0 && _datos[11]==0){
      resultado =  'Enfermedad Respiratoria Derrame Pleural;Se produce por insuficiencia cardiaca, y los familiares deben elegir si mantenerlo conectarlo o desconectarlo';
    }
    if(_datos[25] == 2 && _datos[3]==1 && _datos[11]==0 && _datos[4]==0){
      resultado =  'Enfermedad Respiratoria Gripe Humana;Mantener reposo, ingesta abundante de líquidos, evitar el consumo de alcohol y tabaco';
    }
    if(_datos[23] == 2 && _datos[3]==1 && _datos[11]==1 && _datos[4]==0){
      resultado =  'Enfermedad Respiratoria Neumotórax Apnea;Realizar la Pleurodesis (cirugía de las bullas), se plantea en casos graves como en la afectación de ambos pulmones';
    }
    if(_datos[26] == 1 && _datos[3]==0 && _datos[11]==0 && _datos[4]==1){
      resultado =  'Enfermedad Respiratoria Rinitis Alergica Perenne;Los corticoides tópicos nasales en aerosol, tal es como los de beclometasona, budesónida, triamcinolona, fluticasona y mometasona administrador de forma regular';
    }
    if(_datos[18] == 1 && _datos[3]==0 && _datos[11]==0 && _datos[4]==1){
      resultado =  'Enfermedad Respiratoria Pleuresia;Utilizar un vendaje de consistencia elástico que además no se adhiera al tórax, cambiándolo 2 a 3 veces al día';
    }
    if(_datos[27] == 2 && _datos[3]==1 && _datos[11]==1 && _datos[4]==0){
      resultado =  'Enfermedad Respiratoria Fistula Bronquial;Trasposición muscular Endotorácica';
    }
    if(_datos[28] == 2 && _datos[3]==0 && _datos[11]==1 && _datos[4]==1){
      resultado =  'Enfermedad Respiratoria \nTrastornos de la vos Fibrosis Quistica;Se recomienda realizar pruebas para detectar fibrosis quísticas en niños mayores y adultos a los cuales no se les realizó la prueba al nacer. El médico puede sugerir realizar pruebas genéticas y de sudor para detectar fibrosis quística si tienes episodios recurrentes de inflamación del páncreas, pólipos nasales, infecciones crónicas de los senos paranasales o los pulmones, bronquiectasias o infertilidad masculina';
    }
    if(_datos[16] == 2 && _datos[3]==0 && _datos[28]==3 && _datos[26]==2){
      resultado =  'Enfermedad Respiratoria Bronquitis Infantil;Administrar medicamentos de acción rápida, como la adrenalina, corticoides, oxigenoterapia y nebulizador';
    }
    if(_datos[0] == 1 && _datos[3]==0 && _datos[11]==0 && _datos[26]==2 && _datos[14] == 2){
      resultado =  'Enfermedad Respiratoria Neumonia Infantil;Los niños con neumonía grave sin hipoxemia pueden ser tratados con amoxicilina oral en ámbitos ambulatorios. En los niños hospitalizados con NAC grave y muy grave, la penicilina/ampicilina más gentamicina es superior al cloranfenicol';
    }
    if(_datos[21] == 1 && _datos[24]==2 && _datos[15]==1 && _datos[14]==2){
      resultado =  'Enfermedad Respiratoria Pulmonar Cronica;Los niños con neumonía grave sin hipoxemia pueden ser tratados con amoxicilina oral en ámbitos ambulatorios. En los niños hospitalizados con NAC grave y muy grave, la penicilina/ampicilina más gentamicina es superior al cloranfenicol';
    }
    if(_datos[23] == 2 && _datos[3]==1 && _datos[11]==1 && _datos[4]==2){
      resultado =  'Enfermedad Respiratoria Pleural;Antibióticos, antimicóticos o medicamentos antiparasitarios para tratar una infección en el espacio pleural o en el pulmón. Corticosteroides para reducir la inflamación';
    }
    if(_datos[25] == 1 && _datos[3]==1 && _datos[11]==1 && _datos[4]==0 && _datos[0]==1){
      resultado =  'Enfermedad Respiratoria Bronquial;Existen diversos medicamentos que tienen efecto antiinflamatorio en la mucosa bronquial, pero los más potentes y eficaces son los corticoides (cortisona) inhalados. Para el tratamiento inmediato, se utilizan broncodilatadores';
    }
    if(_datos[23] == 2 && _datos[3]==1 && _datos[11]==1 && _datos[4]==2 && _datos[27]==2 && _datos[28]==2){
      resultado =  'Enfermedad Respiratoria Tuberculosis;Administrar fármacos antituberculosos durante un periodo prolongado, que suele ser de 6 meses';
    }
    if(_datos[23] == 3 && _datos[3]==1 && _datos[11]==0 && _datos[4]==2 && _datos[27]==3 && _datos[28]==2){
      resultado =  'Enfermedad Respiratoria Tuberculosis Tipo A;Administrar fármacos antituberculosos durante un periodo prolongado, que suele ser de 6 meses';
    }
    if(_datos[23] == 3 && _datos[3]==1 && _datos[11]==0 && _datos[4]==2 && _datos[27]==3 && _datos[28]==2 && _datos[18]==1){
      resultado =  'Enfermedad Respiratoria Tuberculosis Tipo B;Administrar fármacos antituberculosos durante un periodo prolongado, que suele ser de 6 meses';
    } if(_datos[23] == 3 && _datos[3]==1 && _datos[11]==0 && _datos[4]==2 && _datos[27]==3 && _datos[28]==2 && _datos[18]==1 && _datos[24]==2 && _datos[22]==2){
      resultado =  'Enfermedad Respiratoria Tuberculosis Tipo C;Administrar fármacos antituberculosos durante un periodo prolongado, que suele ser de 6 meses';
    }
    if(_datos[28] == 2 && _datos[3]==0 && _datos[23]==3 && _datos[4]==2 && _datos[11]==0 && _datos[27]==3){
      resultado =  'Enfermedad Respiratoria Tuberculosis Infantil;Administrar fármacos antituberculosos durante un periodo prolongado, que suele ser de 6 meses';
    }
    if(_datos[16] == 2 && _datos[3]==0 && _datos[28]==3 && _datos[17]==2){
      resultado =  'Enfermedad Respiratoria Infantil;Administrar medicamentos de acción rápida, como la adrenalina, corticoides, oxigenoterapia, nebulizador';
    }
    if(_datos[27] == 3 && _datos[3]==0 && _datos[4]==1 && _datos[11]==1){
      resultado =  'Enfermedad Respiratoria Fibrosis;Se recomienda realizar pruebas para detectar fibrosis quísticas en niños mayores y adultos a los cuales no se les realizó la prueba al nacer. El médico puede sugerir realizar pruebas genéticas y de sudor para detectar fibrosis quística si tienes episodios recurrentes de inflamación del páncreas, pólipos nasales, infecciones crónicas de los senos paranasales o los pulmones, bronquiectasias o infertilidad masculina';
    }
    if(_datos[18] == 2 && _datos[3]==1 && _datos[4]==1 && _datos[14]==1){
      resultado =  'Enfermedad Respiratoria Aviar;Administrar medicamentos de acción rápida, como la adrenalina, corticoides, oxigenoterapia y nebulizador';
    }
    if(_datos[25] == 1 && _datos[3]==0 && _datos[4]==0 && _datos[11]==1){
      resultado =  'Enfermedad Respiratoria Resfrio;El paracetamol (Tylenol) y el ibuprofeno (Advil, Motrin) ayudan a disminuir la fiebre y aliviar los dolores musculares';
    }
    if(_datos[25] == 2 && _datos[3]==1 && _datos[4]==0 && _datos[11]==0){
      resultado =  'Enfermedad Respiratoria Resfrio Comun;El paracetamol (Tylenol) y el ibuprofeno (Advil, Motrin) ayudan a disminuir la fiebre y aliviar los dolores musculares';
    }
    if(_datos[23] == 2 && _datos[3]==1 && _datos[4]==2 && _datos[11]==0 && _datos[14]==2 && _datos[16]==2){
      resultado =  'Enfermedad Respiratoria H1N2;Los fármacos antivirales a veces se indican dentro del primer o el segundo día con síntomas. Estos pueden disminuir la gravedad de los síntomas y, posiblemente, el riesgo de complicaciones';
    }
    if(_datos[0] == 2 && _datos[3]==0 && _datos[4]==0 && _datos[11]==0 && _datos[14]==2){
      resultado =  'Enfermedad Respiratoria Bronquitis Cronica;Administrar Broncodilatadores para relajar los músculos alrededor de las vías respiratorias. Administrar Vacunas contra la gripe y la neumonía neumocócica: Las personas con bronquitis crónica tienen un mayor riesgo de sufrir problemas graves por estas enfermedades';
    }
    if(_datos[18] == 2 && _datos[3]==0 && _datos[4]==1 && _datos[11]==0 && _datos[14]==2 && _datos[16]==2){
      resultado =  'Enfermedad Respiratoria H1N1;Los fármacos antivirales a veces se indican dentro del primer o el segundo día con síntomas. Estos pueden disminuir la gravedad de los síntomas y, posiblemente, el riesgo de complicaciones';
    }
    if(_datos[27] == 2 && _datos[3]==0 && _datos[4]==1 && _datos[11]==1 && _datos[23]==2){
      resultado =  'Enfermedad Respiratoria Angina;El tratamiento es quirúrgico en los casos indicados y consiste en la extirpación de las amígdalas en el caso de infecciones de repetición y la extirpación o reducción en el caso de SAOS';
    }
    if(_datos[28] == 2 && _datos[3]==0 && _datos[4]==1 && _datos[11]==1 && _datos[23]==2 && _datos[27]==2){
      resultado =  'Enfermedad Respiratoria Rinitis;Los antihistamínicos son una de las principales opciones de tratamiento para la rinitis alérgica. En algunos de estos fármacos se ha estudiado la presencia de efectos antiinflamatorios, que pueden representar una ventaja adicional, especialmente en el control de la congestión nasal';
    }
    return resultado;
  }


}

