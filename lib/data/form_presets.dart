import '../models/form_entry.dart';

class FormPreset {
  const FormPreset({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.questionCount,
    required this.licenseNote,
    required this.build,
    this.requiresLicense = false,
  });

  final String id;
  final String title;
  final String description;
  final String category;
  final int questionCount;
  final String licenseNote;
  final bool requiresLicense;
  final FormEntry Function(String Function()) build;
}

const _frequencyOptions = [
  '0 — Hiçbir zaman',
  '1 — Bazı günler',
  '2 — Günlerin yarısından fazla',
  '3 — Neredeyse her gün',
];

final formPresets = <FormPreset>[
  FormPreset(
    id: 'phq9',
    title: 'PHQ-9 Depresyon Tarama Formu',
    description: 'Son iki haftadaki depresif belirtilerin kısa taraması.',
    category: 'Depresyon ve duygu durum',
    questionCount: 10,
    licenseNote: 'Kamuya açık kullanım koşullarıyla eklenebilir. Tanı koymaz; klinik değerlendirmeyi destekler.',
    build: _buildPhq9,
  ),
  FormPreset(
    id: 'gad7',
    title: 'GAD-7 Anksiyete Tarama Formu',
    description:
        'Son iki haftadaki yaygın anksiyete belirtilerinin kısa taraması.',
    category: 'Anksiyete',
    questionCount: 7,
    licenseNote: 'Kamuya açık kullanım koşullarıyla eklenebilir. Tanı koymaz; klinik değerlendirmeyi destekler.',
    build: _buildGad7,
  ),
  FormPreset(
    id: 'intake',
    title: 'İlk Görüşme ve Klinik Öykü Formu',
    description: 'İlk görüşmede danışanın başvuru nedeni, hedefleri ve öyküsünü yapılandırır.',
    category: 'Klinik görüşme',
    questionCount: 9,
    licenseNote: 'MindTrack için özgün, kurum içi kullanım şablonu.',
    build: _buildIntake,
  ),
  FormPreset(
    id: 'safety_plan',
    title: 'Risk ve Güvenlik Değerlendirmesi',
    description: 'Klinik risk göstergelerini ve güvenlik planı ihtiyaçlarını kaydetmek için yapılandırılmış şablon.',
    category: 'Risk değerlendirmesi',
    questionCount: 8,
    licenseNote: 'MindTrack için özgün, kurum içi kullanım şablonu. Acil riskte yerel acil yardım protokolleri uygulanmalıdır.',
    build: _buildSafety,
  ),
  FormPreset(
    id: 'therapy_goals',
    title: 'Terapi Hedefleri ve İlerleme Formu',
    description:
        'Danışanın hedeflerini, ilerleme algısını ve sonraki adımlarını izler.',
    category: 'Terapi süreci',
    questionCount: 7,
    licenseNote: 'MindTrack için özgün, kurum içi kullanım şablonu.',
    build: _buildTherapyGoals,
  ),
  FormPreset(
    id: 'bdi_ii',
    title: 'Beck Depresyon Envanteri-II (BDI-II)',
    description: '21 maddelik lisanslı Beck depresyon ölçümü.',
    category: 'Lisanslı ölçek',
    questionCount: 21,
    requiresLicense: true,
    licenseNote: 'BDI-II soru metni Pearson/Beck lisansına tabidir. Lisanslı soru metnini JSON içe aktararak kullanılabilir.',
    build: _buildLicensedPlaceholder,
  ),
];

FormEntry _buildPhq9(String Function() id) {
  const questions = [
    'Bir şeylere karşı ilgi veya zevk kaybı',
    'Kendinizi çökkün, depresif veya umutsuz hissetme',
    'Uykuya dalmada, uykuyu sürdürmede güçlük veya çok fazla uyuma',
    'Yorgun hissetme veya enerjinizin az olması',
    'İştahsızlık veya fazla yeme',
    'Kendinizi kötü hissetme — başarısız olduğunuzu ya da kendinizi veya ailenizi hayal kırıklığına uğrattığınızı düşünme',
    'Bir şeye odaklanmada güçlük; örneğin gazete okuma veya televizyon izleme',
    'Çok yavaş hareket etme veya konuşma; ya da tam tersine huzursuz ve normalden daha hareketli olma',
    'Ölmüş olsanız daha iyi olacağını veya herhangi bir şekilde kendinize zarar vermeyi düşünme',
  ];
  return FormEntry(
    id: id(),
    title: 'PHQ-9 Depresyon Tarama Formu',
    description: 'Son iki haftada ne sıklıkta rahatsız olduğunuzu işaretleyin. Klinik tanı yerine geçmez.',
    diagnosisCodes: const ['F32.A'],
    questions: [
      for (var i = 0; i < questions.length; i++)
        FormQuestion(
          id: id(),
          type: 'multiple_choice',
          text: questions[i],
          options: _frequencyOptions,
          helpText: '0 Hiçbir zaman · 1 Bazı günler · 2 Günlerin yarısından fazla · 3 Neredeyse her gün',
          order: i,
        ),
      FormQuestion(
        id: id(),
        type: 'multiple_choice',
        text: 'Bu sorunlar işinizi yapmanızı, evdeki işlerinizi sürdürmenizi veya insanlarla geçinmenizi ne kadar zorlaştırdı?',
        options: const [
          '0 — Hiç zorlaştırmadı',
          '1 — Biraz zorlaştırdı',
          '2 — Çok zorlaştırdı',
          '3 — Aşırı derecede zorlaştırdı',
        ],
        order: 9,
      ),
    ],
  );
}

FormEntry _buildGad7(String Function() id) {
  const questions = [
    'Sinirli, kaygılı veya diken üstünde hissetme',
    'Endişelenmeyi durduramama veya kontrol edememe',
    'Çeşitli şeyler hakkında çok fazla endişelenme',
    'Rahatlamakta güçlük çekme',
    'O kadar huzursuz olma ki yerinde durmak zor gelsin',
    'Kolayca sinirlenme veya huzursuz olma',
    'Kötü bir şey olacakmış gibi korkma',
  ];
  return FormEntry(
    id: id(),
    title: 'GAD-7 Anksiyete Tarama Formu',
    description: 'Son iki haftadaki anksiyete belirtilerinin kısa taraması. Klinik tanı yerine geçmez.',
    diagnosisCodes: const ['F41.1'],
    questions: [
      for (var i = 0; i < questions.length; i++)
        FormQuestion(
          id: id(),
          type: 'multiple_choice',
          text: questions[i],
          options: _frequencyOptions,
          helpText: '0 Hiçbir zaman · 1 Bazı günler · 2 Günlerin yarısından fazla · 3 Neredeyse her gün',
          order: i,
        ),
    ],
  );
}

FormEntry _buildIntake(String Function() id) => FormEntry(
  id: id(),
  title: 'İlk Görüşme ve Klinik Öykü Formu',
  description:
      'İlk görüşmede temel klinik bilgileri yapılandırılmış biçimde toplar.',
  questions: _questions(id, const [
    ('Başvuru nedeninizi ve şu anki temel güçlüğünüzü açıklayın.', 'text'),
    ('Bu güçlük ne zamandır devam ediyor?', 'text'),
    ('Şu anki hedefleriniz nelerdir?', 'text'),
    ('Daha önce psikolojik destek aldınız mı?', 'yes_no'),
    (
      'Devam eden bir tıbbi tedavi veya düzenli kullandığınız ilaç var mı?',
      'text',
    ),
    ('Uyku düzeniniz hakkında bilgi verin.', 'text'),
    ('İştah ve enerji düzeyinizde son dönemde değişiklik oldu mu?', 'text'),
    (
      'Sosyal destek kaynaklarınızı ve zorlandığınız ilişkileri anlatın.',
      'text',
    ),
    ('Eklemek istediğiniz başka bir konu var mı?', 'text'),
  ]),
);

FormEntry _buildSafety(String Function() id) => FormEntry(
  id: id(),
  title: 'Risk ve Güvenlik Değerlendirmesi',
  description: 'Risk göstergelerini ve güvenlik planı gereksinimlerini klinik görüşme içinde kaydetmek için kullanılır.',
  questions: _questions(id, const [
    (
      'Son dönemde kendinize zarar verme veya yaşamınıza son verme düşünceniz oldu mu?',
      'yes_no',
    ),
    ('Şu anda kendinizi güvende hissediyor musunuz?', 'yes_no'),
    ('Daha önce kendinize zarar verme davranışınız oldu mu?', 'yes_no'),
    ('Kriz anında ulaşabileceğiniz destek kişileri kimlerdir?', 'text'),
    ('Sizi zorlayan veya tetikleyen durumlar nelerdir?', 'text'),
    (
      'Sizi sakinleştiren ve başa çıkmanıza yardımcı olan yöntemler nelerdir?',
      'text',
    ),
    (
      'Güvenliği artırmak için üzerinde uzlaşılan sonraki adımlar nelerdir?',
      'text',
    ),
    ('Ek klinik gözlemler ve takip notu', 'text'),
  ]),
);

FormEntry _buildTherapyGoals(String Function() id) => FormEntry(
  id: id(),
  title: 'Terapi Hedefleri ve İlerleme Formu',
  description:
      'Danışanın terapi hedeflerini ve süreçteki ilerleme algısını izler.',
  questions: _questions(id, const [
    ('Bu süreçte ulaşmak istediğiniz en önemli hedef nedir?', 'text'),
    (
      'Hedefinize şu an ne kadar yakın olduğunuzu 0–10 arasında değerlendirin.',
      'scale',
    ),
    ('Bu hafta işe yarayan veya yardımcı olan ne oldu?', 'text'),
    ('Bu hafta sizi zorlayan ne oldu?', 'text'),
    (
      'Bir sonraki görüşmeye kadar denemek istediğiniz küçük adım nedir?',
      'text',
    ),
    ('Terapi sürecindeki iş birliğimizi nasıl değerlendiriyorsunuz?', 'scale'),
    ('Eklemek istediğiniz konu', 'text'),
  ]),
);

FormEntry _buildLicensedPlaceholder(String Function() id) => FormEntry(
  id: id(),
  title: 'Beck Depresyon Envanteri-II (BDI-II)',
  description: 'Bu şablon, lisanslı BDI-II soru metni JSON içe aktarıldığında kullanılmak üzere işaretleyicidir.',
  isActive: false,
  diagnosisCodes: const ['F32.A'],
  questions: [],
);

List<FormQuestion> _questions(
  String Function() id,
  List<(String text, String type)> definitions,
) {
  return [
    for (var i = 0; i < definitions.length; i++)
      FormQuestion(
        id: id(),
        type: definitions[i].$2,
        text: definitions[i].$1,
        required: true,
        scaleMax: 10,
        order: i,
      ),
  ];
}
