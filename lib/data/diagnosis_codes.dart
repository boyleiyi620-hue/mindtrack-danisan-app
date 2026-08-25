/// DSM-5-TR ile kullanılan ICD-10-CM ruhsal bozukluk kod kataloğu.
///
/// F01-F99 kodları ve DSM-5-TR klinik dikkat odağı/güncelleme kodları,
/// CDC FY26 ICD-10-CM code descriptions dosyasından derlenmiştir.
/// APA güncellemeleri: F32.A ve DSM-5-TR ile ilişkili Z/R kodları ayrıca korunur.
class DiagnosisCode {
  const DiagnosisCode({
    required this.code,
    required this.label,
    required this.category,
  });
  final String code;
  final String label;
  final String category;
  String get display => '$code — $label';
}

const diagnosisCodes = <DiagnosisCode>[
  DiagnosisCode(
    code: 'F01.50',
    label: 'Vascular dementia, unspecified severity, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.511',
    label: 'Vascular dementia, unspecified severity, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.518',
    label: 'Vascular dementia, unspecified severity, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.52',
    label:
        'Vascular dementia, unspecified severity, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.53',
    label: 'Vascular dementia, unspecified severity, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.54',
    label: 'Vascular dementia, unspecified severity, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.A0',
    label: 'Vascular dementia, mild, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.A11',
    label: 'Vascular dementia, mild, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.A18',
    label: 'Vascular dementia, mild, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.A2',
    label: 'Vascular dementia, mild, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.A3',
    label: 'Vascular dementia, mild, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.A4',
    label: 'Vascular dementia, mild, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.B0',
    label: 'Vascular dementia, moderate, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.B11',
    label: 'Vascular dementia, moderate, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.B18',
    label: 'Vascular dementia, moderate, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.B2',
    label: 'Vascular dementia, moderate, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.B3',
    label: 'Vascular dementia, moderate, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.B4',
    label: 'Vascular dementia, moderate, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.C0',
    label: 'Vascular dementia, severe, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.C11',
    label: 'Vascular dementia, severe, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.C18',
    label: 'Vascular dementia, severe, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.C2',
    label: 'Vascular dementia, severe, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.C3',
    label: 'Vascular dementia, severe, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F01.C4',
    label: 'Vascular dementia, severe, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.80',
    label: 'Dementia in other diseases classified elsewhere, unspecified severity, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.811',
    label: 'Dementia in other diseases classified elsewhere, unspecified severity, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.818',
    label: 'Dementia in other diseases classified elsewhere, unspecified severity, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.82',
    label: 'Dementia in other diseases classified elsewhere, unspecified severity, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.83',
    label: 'Dementia in other diseases classified elsewhere, unspecified severity, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.84',
    label: 'Dementia in other diseases classified elsewhere, unspecified severity, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.A0',
    label: 'Dementia in other diseases classified elsewhere, mild, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.A11',
    label:
        'Dementia in other diseases classified elsewhere, mild, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.A18',
    label: 'Dementia in other diseases classified elsewhere, mild, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.A2',
    label: 'Dementia in other diseases classified elsewhere, mild, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.A3',
    label: 'Dementia in other diseases classified elsewhere, mild, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.A4',
    label:
        'Dementia in other diseases classified elsewhere, mild, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.B0',
    label: 'Dementia in other diseases classified elsewhere, moderate, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.B11',
    label: 'Dementia in other diseases classified elsewhere, moderate, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.B18',
    label: 'Dementia in other diseases classified elsewhere, moderate, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.B2',
    label: 'Dementia in other diseases classified elsewhere, moderate, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.B3',
    label: 'Dementia in other diseases classified elsewhere, moderate, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.B4',
    label: 'Dementia in other diseases classified elsewhere, moderate, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.C0',
    label: 'Dementia in other diseases classified elsewhere, severe, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.C11',
    label: 'Dementia in other diseases classified elsewhere, severe, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.C18',
    label: 'Dementia in other diseases classified elsewhere, severe, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.C2',
    label: 'Dementia in other diseases classified elsewhere, severe, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.C3',
    label: 'Dementia in other diseases classified elsewhere, severe, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F02.C4',
    label:
        'Dementia in other diseases classified elsewhere, severe, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.90',
    label: 'Unspecified dementia, unspecified severity, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.911',
    label: 'Unspecified dementia, unspecified severity, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.918',
    label: 'Unspecified dementia, unspecified severity, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.92',
    label: 'Unspecified dementia, unspecified severity, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.93',
    label: 'Unspecified dementia, unspecified severity, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.94',
    label: 'Unspecified dementia, unspecified severity, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.A0',
    label: 'Unspecified dementia, mild, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.A11',
    label: 'Unspecified dementia, mild, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.A18',
    label: 'Unspecified dementia, mild, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.A2',
    label: 'Unspecified dementia, mild, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.A3',
    label: 'Unspecified dementia, mild, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.A4',
    label: 'Unspecified dementia, mild, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.B0',
    label: 'Unspecified dementia, moderate, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.B11',
    label: 'Unspecified dementia, moderate, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.B18',
    label: 'Unspecified dementia, moderate, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.B2',
    label: 'Unspecified dementia, moderate, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.B3',
    label: 'Unspecified dementia, moderate, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.B4',
    label: 'Unspecified dementia, moderate, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.C0',
    label: 'Unspecified dementia, severe, without behavioral disturbance, psychotic disturbance, mood disturbance, and anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.C11',
    label: 'Unspecified dementia, severe, with agitation',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.C18',
    label: 'Unspecified dementia, severe, with other behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.C2',
    label: 'Unspecified dementia, severe, with psychotic disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.C3',
    label: 'Unspecified dementia, severe, with mood disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F03.C4',
    label: 'Unspecified dementia, severe, with anxiety',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F04',
    label: 'Amnestic disorder due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F05',
    label: 'Delirium due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.0',
    label: 'Psychotic disorder with hallucinations due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.1',
    label: 'Catatonic disorder due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.2',
    label: 'Psychotic disorder with delusions due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.30',
    label: 'Mood disorder due to known physiological condition, unspecified',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.31',
    label: 'Mood disorder due to known physiological condition with depressive features',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.32',
    label: 'Mood disorder due to known physiological condition with major depressive-like episode',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.33',
    label: 'Mood disorder due to known physiological condition with manic features',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.34',
    label: 'Mood disorder due to known physiological condition with mixed features',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.4',
    label: 'Anxiety disorder due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.70',
    label: 'Mild neurocognitive disorder due to known physiological condition without behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.71',
    label: 'Mild neurocognitive disorder due to known physiological condition with behavioral disturbance',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F06.8',
    label:
        'Other specified mental disorders due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F07.0',
    label: 'Personality change due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F07.81',
    label: 'Postconcussional syndrome',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F07.89',
    label: 'Other personality and behavioral disorders due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F07.9',
    label: 'Unspecified personality and behavioral disorder due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F09',
    label: 'Unspecified mental disorder due to known physiological condition',
    category: 'Bilinen fizyolojik duruma bağlı ruhsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.10',
    label: 'Alcohol abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.11',
    label: 'Alcohol abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.120',
    label: 'Alcohol abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.121',
    label: 'Alcohol abuse with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.129',
    label: 'Alcohol abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.130',
    label: 'Alcohol abuse with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.131',
    label: 'Alcohol abuse with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.132',
    label: 'Alcohol abuse with withdrawal with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.139',
    label: 'Alcohol abuse with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.14',
    label: 'Alcohol abuse with alcohol-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.150',
    label:
        'Alcohol abuse with alcohol-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.151',
    label: 'Alcohol abuse with alcohol-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.159',
    label: 'Alcohol abuse with alcohol-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.180',
    label: 'Alcohol abuse with alcohol-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.181',
    label: 'Alcohol abuse with alcohol-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.182',
    label: 'Alcohol abuse with alcohol-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.188',
    label: 'Alcohol abuse with other alcohol-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.19',
    label: 'Alcohol abuse with unspecified alcohol-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.20',
    label: 'Alcohol dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.21',
    label: 'Alcohol dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.220',
    label: 'Alcohol dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.221',
    label: 'Alcohol dependence with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.229',
    label: 'Alcohol dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.230',
    label: 'Alcohol dependence with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.231',
    label: 'Alcohol dependence with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.232',
    label: 'Alcohol dependence with withdrawal with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.239',
    label: 'Alcohol dependence with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.24',
    label: 'Alcohol dependence with alcohol-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.250',
    label: 'Alcohol dependence with alcohol-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.251',
    label: 'Alcohol dependence with alcohol-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.259',
    label: 'Alcohol dependence with alcohol-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.26',
    label:
        'Alcohol dependence with alcohol-induced persisting amnestic disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.27',
    label: 'Alcohol dependence with alcohol-induced persisting dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.280',
    label: 'Alcohol dependence with alcohol-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.281',
    label: 'Alcohol dependence with alcohol-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.282',
    label: 'Alcohol dependence with alcohol-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.288',
    label: 'Alcohol dependence with other alcohol-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.29',
    label: 'Alcohol dependence with unspecified alcohol-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.90',
    label: 'Alcohol use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.91',
    label: 'Alcohol use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.920',
    label: 'Alcohol use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.921',
    label: 'Alcohol use, unspecified with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.929',
    label: 'Alcohol use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.930',
    label: 'Alcohol use, unspecified with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.931',
    label: 'Alcohol use, unspecified with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.932',
    label:
        'Alcohol use, unspecified with withdrawal with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.939',
    label: 'Alcohol use, unspecified with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.94',
    label: 'Alcohol use, unspecified with alcohol-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.950',
    label: 'Alcohol use, unspecified with alcohol-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.951',
    label: 'Alcohol use, unspecified with alcohol-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.959',
    label: 'Alcohol use, unspecified with alcohol-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.96',
    label: 'Alcohol use, unspecified with alcohol-induced persisting amnestic disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.97',
    label: 'Alcohol use, unspecified with alcohol-induced persisting dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.980',
    label: 'Alcohol use, unspecified with alcohol-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.981',
    label: 'Alcohol use, unspecified with alcohol-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.982',
    label: 'Alcohol use, unspecified with alcohol-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.988',
    label: 'Alcohol use, unspecified with other alcohol-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F10.99',
    label: 'Alcohol use, unspecified with unspecified alcohol-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.10',
    label: 'Opioid abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.11',
    label: 'Opioid abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.120',
    label: 'Opioid abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.121',
    label: 'Opioid abuse with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.122',
    label: 'Opioid abuse with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.129',
    label: 'Opioid abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.13',
    label: 'Opioid abuse with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.14',
    label: 'Opioid abuse with opioid-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.150',
    label: 'Opioid abuse with opioid-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.151',
    label: 'Opioid abuse with opioid-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.159',
    label: 'Opioid abuse with opioid-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.181',
    label: 'Opioid abuse with opioid-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.182',
    label: 'Opioid abuse with opioid-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.188',
    label: 'Opioid abuse with other opioid-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.19',
    label: 'Opioid abuse with unspecified opioid-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.20',
    label: 'Opioid dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.21',
    label: 'Opioid dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.220',
    label: 'Opioid dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.221',
    label: 'Opioid dependence with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.222',
    label: 'Opioid dependence with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.229',
    label: 'Opioid dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.23',
    label: 'Opioid dependence with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.24',
    label: 'Opioid dependence with opioid-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.250',
    label: 'Opioid dependence with opioid-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.251',
    label: 'Opioid dependence with opioid-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.259',
    label:
        'Opioid dependence with opioid-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.281',
    label: 'Opioid dependence with opioid-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.282',
    label: 'Opioid dependence with opioid-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.288',
    label: 'Opioid dependence with other opioid-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.29',
    label: 'Opioid dependence with unspecified opioid-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.90',
    label: 'Opioid use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.91',
    label: 'Opioid use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.920',
    label: 'Opioid use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.921',
    label: 'Opioid use, unspecified with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.922',
    label:
        'Opioid use, unspecified with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.929',
    label: 'Opioid use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.93',
    label: 'Opioid use, unspecified with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.94',
    label: 'Opioid use, unspecified with opioid-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.950',
    label: 'Opioid use, unspecified with opioid-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.951',
    label: 'Opioid use, unspecified with opioid-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.959',
    label: 'Opioid use, unspecified with opioid-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.981',
    label: 'Opioid use, unspecified with opioid-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.982',
    label: 'Opioid use, unspecified with opioid-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.988',
    label: 'Opioid use, unspecified with other opioid-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F11.99',
    label: 'Opioid use, unspecified with unspecified opioid-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.10',
    label: 'Cannabis abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.11',
    label: 'Cannabis abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.120',
    label: 'Cannabis abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.121',
    label: 'Cannabis abuse with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.122',
    label: 'Cannabis abuse with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.129',
    label: 'Cannabis abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.13',
    label: 'Cannabis abuse with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.150',
    label: 'Cannabis abuse with psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.151',
    label: 'Cannabis abuse with psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.159',
    label: 'Cannabis abuse with psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.180',
    label: 'Cannabis abuse with cannabis-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.188',
    label: 'Cannabis abuse with other cannabis-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.19',
    label: 'Cannabis abuse with unspecified cannabis-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.20',
    label: 'Cannabis dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.21',
    label: 'Cannabis dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.220',
    label: 'Cannabis dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.221',
    label: 'Cannabis dependence with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.222',
    label: 'Cannabis dependence with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.229',
    label: 'Cannabis dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.23',
    label: 'Cannabis dependence with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.250',
    label: 'Cannabis dependence with psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.251',
    label: 'Cannabis dependence with psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.259',
    label: 'Cannabis dependence with psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.280',
    label: 'Cannabis dependence with cannabis-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.288',
    label: 'Cannabis dependence with other cannabis-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.29',
    label: 'Cannabis dependence with unspecified cannabis-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.90',
    label: 'Cannabis use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.91',
    label: 'Cannabis use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.920',
    label: 'Cannabis use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.921',
    label: 'Cannabis use, unspecified with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.922',
    label: 'Cannabis use, unspecified with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.929',
    label: 'Cannabis use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.93',
    label: 'Cannabis use, unspecified with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.950',
    label: 'Cannabis use, unspecified with psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.951',
    label:
        'Cannabis use, unspecified with psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.959',
    label: 'Cannabis use, unspecified with psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.980',
    label: 'Cannabis use, unspecified with anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.988',
    label: 'Cannabis use, unspecified with other cannabis-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F12.99',
    label:
        'Cannabis use, unspecified with unspecified cannabis-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.10',
    label: 'Sedative, hypnotic or anxiolytic abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.11',
    label: 'Sedative, hypnotic or anxiolytic abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.120',
    label: 'Sedative, hypnotic or anxiolytic abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.121',
    label: 'Sedative, hypnotic or anxiolytic abuse with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.129',
    label:
        'Sedative, hypnotic or anxiolytic abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.130',
    label:
        'Sedative, hypnotic or anxiolytic abuse with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.131',
    label: 'Sedative, hypnotic or anxiolytic abuse with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.132',
    label: 'Sedative, hypnotic or anxiolytic abuse with withdrawal with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.139',
    label:
        'Sedative, hypnotic or anxiolytic abuse with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.14',
    label: 'Sedative, hypnotic or anxiolytic abuse with sedative, hypnotic or anxiolytic-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.150',
    label: 'Sedative, hypnotic or anxiolytic abuse with sedative, hypnotic or anxiolytic-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.151',
    label: 'Sedative, hypnotic or anxiolytic abuse with sedative, hypnotic or anxiolytic-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.159',
    label: 'Sedative, hypnotic or anxiolytic abuse with sedative, hypnotic or anxiolytic-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.180',
    label: 'Sedative, hypnotic or anxiolytic abuse with sedative, hypnotic or anxiolytic-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.181',
    label: 'Sedative, hypnotic or anxiolytic abuse with sedative, hypnotic or anxiolytic-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.182',
    label: 'Sedative, hypnotic or anxiolytic abuse with sedative, hypnotic or anxiolytic-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.188',
    label: 'Sedative, hypnotic or anxiolytic abuse with other sedative, hypnotic or anxiolytic-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.19',
    label: 'Sedative, hypnotic or anxiolytic abuse with unspecified sedative, hypnotic or anxiolytic-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.20',
    label: 'Sedative, hypnotic or anxiolytic dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.21',
    label: 'Sedative, hypnotic or anxiolytic dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.220',
    label: 'Sedative, hypnotic or anxiolytic dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.221',
    label: 'Sedative, hypnotic or anxiolytic dependence with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.229',
    label: 'Sedative, hypnotic or anxiolytic dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.230',
    label: 'Sedative, hypnotic or anxiolytic dependence with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.231',
    label:
        'Sedative, hypnotic or anxiolytic dependence with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.232',
    label: 'Sedative, hypnotic or anxiolytic dependence with withdrawal with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.239',
    label: 'Sedative, hypnotic or anxiolytic dependence with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.24',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.250',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.251',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.259',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.26',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced persisting amnestic disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.27',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced persisting dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.280',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.281',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.282',
    label: 'Sedative, hypnotic or anxiolytic dependence with sedative, hypnotic or anxiolytic-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.288',
    label: 'Sedative, hypnotic or anxiolytic dependence with other sedative, hypnotic or anxiolytic-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.29',
    label: 'Sedative, hypnotic or anxiolytic dependence with unspecified sedative, hypnotic or anxiolytic-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.90',
    label: 'Sedative, hypnotic, or anxiolytic use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.91',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.920',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.921',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.929',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.930',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.931',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.932',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with withdrawal with perceptual disturbances',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.939',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.94',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.950',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.951',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.959',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.96',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced persisting amnestic disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.97',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced persisting dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.980',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.981',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.982',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with sedative, hypnotic or anxiolytic-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.988',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with other sedative, hypnotic or anxiolytic-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F13.99',
    label: 'Sedative, hypnotic or anxiolytic use, unspecified with unspecified sedative, hypnotic or anxiolytic-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.10',
    label: 'Cocaine abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.11',
    label: 'Cocaine abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.120',
    label: 'Cocaine abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.121',
    label: 'Cocaine abuse with intoxication with delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.122',
    label: 'Cocaine abuse with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.129',
    label: 'Cocaine abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.13',
    label: 'Cocaine abuse, unspecified with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.14',
    label: 'Cocaine abuse with cocaine-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.150',
    label:
        'Cocaine abuse with cocaine-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.151',
    label: 'Cocaine abuse with cocaine-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.159',
    label: 'Cocaine abuse with cocaine-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.180',
    label: 'Cocaine abuse with cocaine-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.181',
    label: 'Cocaine abuse with cocaine-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.182',
    label: 'Cocaine abuse with cocaine-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.188',
    label: 'Cocaine abuse with other cocaine-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.19',
    label: 'Cocaine abuse with unspecified cocaine-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.20',
    label: 'Cocaine dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.21',
    label: 'Cocaine dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.220',
    label: 'Cocaine dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.221',
    label: 'Cocaine dependence with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.222',
    label: 'Cocaine dependence with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.229',
    label: 'Cocaine dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.23',
    label: 'Cocaine dependence with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.24',
    label: 'Cocaine dependence with cocaine-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.250',
    label: 'Cocaine dependence with cocaine-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.251',
    label: 'Cocaine dependence with cocaine-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.259',
    label: 'Cocaine dependence with cocaine-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.280',
    label: 'Cocaine dependence with cocaine-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.281',
    label: 'Cocaine dependence with cocaine-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.282',
    label: 'Cocaine dependence with cocaine-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.288',
    label: 'Cocaine dependence with other cocaine-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.29',
    label: 'Cocaine dependence with unspecified cocaine-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.90',
    label: 'Cocaine use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.91',
    label: 'Cocaine use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.920',
    label: 'Cocaine use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.921',
    label: 'Cocaine use, unspecified with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.922',
    label: 'Cocaine use, unspecified with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.929',
    label: 'Cocaine use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.93',
    label: 'Cocaine use, unspecified with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.94',
    label: 'Cocaine use, unspecified with cocaine-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.950',
    label: 'Cocaine use, unspecified with cocaine-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.951',
    label: 'Cocaine use, unspecified with cocaine-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.959',
    label: 'Cocaine use, unspecified with cocaine-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.980',
    label: 'Cocaine use, unspecified with cocaine-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.981',
    label: 'Cocaine use, unspecified with cocaine-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.982',
    label: 'Cocaine use, unspecified with cocaine-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.988',
    label: 'Cocaine use, unspecified with other cocaine-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F14.99',
    label: 'Cocaine use, unspecified with unspecified cocaine-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.10',
    label: 'Other stimulant abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.11',
    label: 'Other stimulant abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.120',
    label: 'Other stimulant abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.121',
    label: 'Other stimulant abuse with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.122',
    label:
        'Other stimulant abuse with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.129',
    label: 'Other stimulant abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.13',
    label: 'Other stimulant abuse with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.14',
    label: 'Other stimulant abuse with stimulant-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.150',
    label: 'Other stimulant abuse with stimulant-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.151',
    label: 'Other stimulant abuse with stimulant-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.159',
    label: 'Other stimulant abuse with stimulant-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.180',
    label: 'Other stimulant abuse with stimulant-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.181',
    label: 'Other stimulant abuse with stimulant-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.182',
    label: 'Other stimulant abuse with stimulant-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.188',
    label: 'Other stimulant abuse with other stimulant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.19',
    label: 'Other stimulant abuse with unspecified stimulant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.20',
    label: 'Other stimulant dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.21',
    label: 'Other stimulant dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.220',
    label: 'Other stimulant dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.221',
    label: 'Other stimulant dependence with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.222',
    label: 'Other stimulant dependence with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.229',
    label: 'Other stimulant dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.23',
    label: 'Other stimulant dependence with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.24',
    label: 'Other stimulant dependence with stimulant-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.250',
    label: 'Other stimulant dependence with stimulant-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.251',
    label: 'Other stimulant dependence with stimulant-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.259',
    label: 'Other stimulant dependence with stimulant-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.280',
    label: 'Other stimulant dependence with stimulant-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.281',
    label:
        'Other stimulant dependence with stimulant-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.282',
    label: 'Other stimulant dependence with stimulant-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.288',
    label: 'Other stimulant dependence with other stimulant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.29',
    label: 'Other stimulant dependence with unspecified stimulant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.90',
    label: 'Other stimulant use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.91',
    label: 'Other stimulant use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.920',
    label: 'Other stimulant use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.921',
    label: 'Other stimulant use, unspecified with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.922',
    label: 'Other stimulant use, unspecified with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.929',
    label: 'Other stimulant use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.93',
    label: 'Other stimulant use, unspecified with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.94',
    label:
        'Other stimulant use, unspecified with stimulant-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.950',
    label: 'Other stimulant use, unspecified with stimulant-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.951',
    label: 'Other stimulant use, unspecified with stimulant-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.959',
    label: 'Other stimulant use, unspecified with stimulant-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.980',
    label: 'Other stimulant use, unspecified with stimulant-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.981',
    label: 'Other stimulant use, unspecified with stimulant-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.982',
    label: 'Other stimulant use, unspecified with stimulant-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.988',
    label: 'Other stimulant use, unspecified with other stimulant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F15.99',
    label: 'Other stimulant use, unspecified with unspecified stimulant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.10',
    label: 'Hallucinogen abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.11',
    label: 'Hallucinogen abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.120',
    label: 'Hallucinogen abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.121',
    label: 'Hallucinogen abuse with intoxication with delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.122',
    label: 'Hallucinogen abuse with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.129',
    label: 'Hallucinogen abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.14',
    label: 'Hallucinogen abuse with hallucinogen-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.150',
    label: 'Hallucinogen abuse with hallucinogen-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.151',
    label: 'Hallucinogen abuse with hallucinogen-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.159',
    label: 'Hallucinogen abuse with hallucinogen-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.180',
    label: 'Hallucinogen abuse with hallucinogen-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.183',
    label: 'Hallucinogen abuse with hallucinogen persisting perception disorder (flashbacks)',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.188',
    label: 'Hallucinogen abuse with other hallucinogen-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.19',
    label: 'Hallucinogen abuse with unspecified hallucinogen-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.20',
    label: 'Hallucinogen dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.21',
    label: 'Hallucinogen dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.220',
    label: 'Hallucinogen dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.221',
    label: 'Hallucinogen dependence with intoxication with delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.229',
    label: 'Hallucinogen dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.24',
    label: 'Hallucinogen dependence with hallucinogen-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.250',
    label: 'Hallucinogen dependence with hallucinogen-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.251',
    label: 'Hallucinogen dependence with hallucinogen-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.259',
    label: 'Hallucinogen dependence with hallucinogen-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.280',
    label: 'Hallucinogen dependence with hallucinogen-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.283',
    label: 'Hallucinogen dependence with hallucinogen persisting perception disorder (flashbacks)',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.288',
    label: 'Hallucinogen dependence with other hallucinogen-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.29',
    label: 'Hallucinogen dependence with unspecified hallucinogen-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.90',
    label: 'Hallucinogen use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.91',
    label: 'Hallucinogen use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.920',
    label: 'Hallucinogen use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.921',
    label: 'Hallucinogen use, unspecified with intoxication with delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.929',
    label: 'Hallucinogen use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.94',
    label:
        'Hallucinogen use, unspecified with hallucinogen-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.950',
    label: 'Hallucinogen use, unspecified with hallucinogen-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.951',
    label: 'Hallucinogen use, unspecified with hallucinogen-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.959',
    label: 'Hallucinogen use, unspecified with hallucinogen-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.980',
    label: 'Hallucinogen use, unspecified with hallucinogen-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.983',
    label: 'Hallucinogen use, unspecified with hallucinogen persisting perception disorder (flashbacks)',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.988',
    label: 'Hallucinogen use, unspecified with other hallucinogen-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F16.99',
    label: 'Hallucinogen use, unspecified with unspecified hallucinogen-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.200',
    label: 'Nicotine dependence, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.201',
    label: 'Nicotine dependence, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.203',
    label: 'Nicotine dependence unspecified, with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.208',
    label: 'Nicotine dependence, unspecified, with other nicotine-induced disorders',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.209',
    label: 'Nicotine dependence, unspecified, with unspecified nicotine-induced disorders',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.210',
    label: 'Nicotine dependence, cigarettes, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.211',
    label: 'Nicotine dependence, cigarettes, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.213',
    label: 'Nicotine dependence, cigarettes, with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.218',
    label: 'Nicotine dependence, cigarettes, with other nicotine-induced disorders',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.219',
    label: 'Nicotine dependence, cigarettes, with unspecified nicotine-induced disorders',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.220',
    label: 'Nicotine dependence, chewing tobacco, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.221',
    label: 'Nicotine dependence, chewing tobacco, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.223',
    label: 'Nicotine dependence, chewing tobacco, with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.228',
    label: 'Nicotine dependence, chewing tobacco, with other nicotine-induced disorders',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.229',
    label: 'Nicotine dependence, chewing tobacco, with unspecified nicotine-induced disorders',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.290',
    label: 'Nicotine dependence, other tobacco product, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.291',
    label: 'Nicotine dependence, other tobacco product, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.293',
    label: 'Nicotine dependence, other tobacco product, with withdrawal',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.298',
    label: 'Nicotine dependence, other tobacco product, with other nicotine-induced disorders',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F17.299',
    label: 'Nicotine dependence, other tobacco product, with unspecified nicotine-induced disorders',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.10',
    label: 'Inhalant abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.11',
    label: 'Inhalant abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.120',
    label: 'Inhalant abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.121',
    label: 'Inhalant abuse with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.129',
    label: 'Inhalant abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.14',
    label: 'Inhalant abuse with inhalant-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.150',
    label: 'Inhalant abuse with inhalant-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.151',
    label: 'Inhalant abuse with inhalant-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.159',
    label:
        'Inhalant abuse with inhalant-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.17',
    label: 'Inhalant abuse with inhalant-induced dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.180',
    label: 'Inhalant abuse with inhalant-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.188',
    label: 'Inhalant abuse with other inhalant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.19',
    label: 'Inhalant abuse with unspecified inhalant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.20',
    label: 'Inhalant dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.21',
    label: 'Inhalant dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.220',
    label: 'Inhalant dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.221',
    label: 'Inhalant dependence with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.229',
    label: 'Inhalant dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.24',
    label: 'Inhalant dependence with inhalant-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.250',
    label: 'Inhalant dependence with inhalant-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.251',
    label: 'Inhalant dependence with inhalant-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.259',
    label: 'Inhalant dependence with inhalant-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.27',
    label: 'Inhalant dependence with inhalant-induced dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.280',
    label: 'Inhalant dependence with inhalant-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.288',
    label: 'Inhalant dependence with other inhalant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.29',
    label: 'Inhalant dependence with unspecified inhalant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.90',
    label: 'Inhalant use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.91',
    label: 'Inhalant use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.920',
    label: 'Inhalant use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.921',
    label: 'Inhalant use, unspecified with intoxication with delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.929',
    label: 'Inhalant use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.94',
    label: 'Inhalant use, unspecified with inhalant-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.950',
    label: 'Inhalant use, unspecified with inhalant-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.951',
    label: 'Inhalant use, unspecified with inhalant-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.959',
    label: 'Inhalant use, unspecified with inhalant-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.97',
    label:
        'Inhalant use, unspecified with inhalant-induced persisting dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.980',
    label: 'Inhalant use, unspecified with inhalant-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.988',
    label: 'Inhalant use, unspecified with other inhalant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F18.99',
    label:
        'Inhalant use, unspecified with unspecified inhalant-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.10',
    label: 'Other psychoactive substance abuse, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.11',
    label: 'Other psychoactive substance abuse, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.120',
    label:
        'Other psychoactive substance abuse with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.121',
    label: 'Other psychoactive substance abuse with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.122',
    label: 'Other psychoactive substance abuse with intoxication with perceptual disturbances',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.129',
    label: 'Other psychoactive substance abuse with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.130',
    label: 'Other psychoactive substance abuse with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.131',
    label: 'Other psychoactive substance abuse with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.132',
    label: 'Other psychoactive substance abuse with withdrawal with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.139',
    label: 'Other psychoactive substance abuse with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.14',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.150',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.151',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.159',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.16',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced persisting amnestic disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.17',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced persisting dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.180',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.181',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.182',
    label: 'Other psychoactive substance abuse with psychoactive substance-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.188',
    label: 'Other psychoactive substance abuse with other psychoactive substance-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.19',
    label: 'Other psychoactive substance abuse with unspecified psychoactive substance-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.20',
    label: 'Other psychoactive substance dependence, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.21',
    label: 'Other psychoactive substance dependence, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.220',
    label: 'Other psychoactive substance dependence with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.221',
    label: 'Other psychoactive substance dependence with intoxication delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.222',
    label: 'Other psychoactive substance dependence with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.229',
    label: 'Other psychoactive substance dependence with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.230',
    label: 'Other psychoactive substance dependence with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.231',
    label: 'Other psychoactive substance dependence with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.232',
    label: 'Other psychoactive substance dependence with withdrawal with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.239',
    label:
        'Other psychoactive substance dependence with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.24',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.250',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.251',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.259',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.26',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced persisting amnestic disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.27',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced persisting dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.280',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.281',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.282',
    label: 'Other psychoactive substance dependence with psychoactive substance-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.288',
    label: 'Other psychoactive substance dependence with other psychoactive substance-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.29',
    label: 'Other psychoactive substance dependence with unspecified psychoactive substance-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.90',
    label: 'Other psychoactive substance use, unspecified, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.91',
    label: 'Other psychoactive substance use, unspecified, in remission',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.920',
    label: 'Other psychoactive substance use, unspecified with intoxication, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.921',
    label: 'Other psychoactive substance use, unspecified with intoxication with delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.922',
    label: 'Other psychoactive substance use, unspecified with intoxication with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.929',
    label: 'Other psychoactive substance use, unspecified with intoxication, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.930',
    label: 'Other psychoactive substance use, unspecified with withdrawal, uncomplicated',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.931',
    label: 'Other psychoactive substance use, unspecified with withdrawal delirium',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.932',
    label: 'Other psychoactive substance use, unspecified with withdrawal with perceptual disturbance',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.939',
    label: 'Other psychoactive substance use, unspecified with withdrawal, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.94',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced mood disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.950',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced psychotic disorder with delusions',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.951',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced psychotic disorder with hallucinations',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.959',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced psychotic disorder, unspecified',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.96',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced persisting amnestic disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.97',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced persisting dementia',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.980',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced anxiety disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.981',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced sexual dysfunction',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.982',
    label: 'Other psychoactive substance use, unspecified with psychoactive substance-induced sleep disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.988',
    label: 'Other psychoactive substance use, unspecified with other psychoactive substance-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F19.99',
    label: 'Other psychoactive substance use, unspecified with unspecified psychoactive substance-induced disorder',
    category: 'Madde kullanımıyla ilişkili ruhsal ve davranışsal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F20.0',
    label: 'Paranoid schizophrenia',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F20.1',
    label: 'Disorganized schizophrenia',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F20.2',
    label: 'Catatonic schizophrenia',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F20.3',
    label: 'Undifferentiated schizophrenia',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F20.5',
    label: 'Residual schizophrenia',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F20.81',
    label: 'Schizophreniform disorder',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F20.89',
    label: 'Other schizophrenia',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F20.9',
    label: 'Schizophrenia, unspecified',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F21',
    label: 'Schizotypal disorder',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F22',
    label: 'Delusional disorders',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F23',
    label: 'Brief psychotic disorder',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F24',
    label: 'Shared psychotic disorder',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F25.0',
    label: 'Schizoaffective disorder, bipolar type',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F25.1',
    label: 'Schizoaffective disorder, depressive type',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F25.8',
    label: 'Other schizoaffective disorders',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F25.9',
    label: 'Schizoaffective disorder, unspecified',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F28',
    label: 'Other psychotic disorder not due to a substance or known physiological condition',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F29',
    label: 'Unspecified psychosis not due to a substance or known physiological condition',
    category: 'Şizofreni spektrumu ve diğer psikotik bozukluklar',
  ),
  DiagnosisCode(
    code: 'F30.10',
    label: 'Manic episode without psychotic symptoms, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F30.11',
    label: 'Manic episode without psychotic symptoms, mild',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F30.12',
    label: 'Manic episode without psychotic symptoms, moderate',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F30.13',
    label: 'Manic episode, severe, without psychotic symptoms',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F30.2',
    label: 'Manic episode, severe with psychotic symptoms',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F30.3',
    label: 'Manic episode in partial remission',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F30.4',
    label: 'Manic episode in full remission',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F30.8',
    label: 'Other manic episodes',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F30.9',
    label: 'Manic episode, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.0',
    label: 'Bipolar disorder, current episode hypomanic',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.10',
    label: 'Bipolar disorder, current episode manic without psychotic features, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.11',
    label: 'Bipolar disorder, current episode manic without psychotic features, mild',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.12',
    label: 'Bipolar disorder, current episode manic without psychotic features, moderate',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.13',
    label: 'Bipolar disorder, current episode manic without psychotic features, severe',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.2',
    label: 'Bipolar disorder, current episode manic severe with psychotic features',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.30',
    label: 'Bipolar disorder, current episode depressed, mild or moderate severity, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.31',
    label: 'Bipolar disorder, current episode depressed, mild',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.32',
    label: 'Bipolar disorder, current episode depressed, moderate',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.4',
    label: 'Bipolar disorder, current episode depressed, severe, without psychotic features',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.5',
    label: 'Bipolar disorder, current episode depressed, severe, with psychotic features',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.60',
    label: 'Bipolar disorder, current episode mixed, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.61',
    label: 'Bipolar disorder, current episode mixed, mild',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.62',
    label: 'Bipolar disorder, current episode mixed, moderate',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.63',
    label: 'Bipolar disorder, current episode mixed, severe, without psychotic features',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.64',
    label: 'Bipolar disorder, current episode mixed, severe, with psychotic features',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.70',
    label: 'Bipolar disorder, currently in remission, most recent episode unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.71',
    label:
        'Bipolar disorder, in partial remission, most recent episode hypomanic',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.72',
    label: 'Bipolar disorder, in full remission, most recent episode hypomanic',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.73',
    label: 'Bipolar disorder, in partial remission, most recent episode manic',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.74',
    label: 'Bipolar disorder, in full remission, most recent episode manic',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.75',
    label:
        'Bipolar disorder, in partial remission, most recent episode depressed',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.76',
    label: 'Bipolar disorder, in full remission, most recent episode depressed',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.77',
    label: 'Bipolar disorder, in partial remission, most recent episode mixed',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.78',
    label: 'Bipolar disorder, in full remission, most recent episode mixed',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.81',
    label: 'Bipolar II disorder',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.89',
    label: 'Other bipolar disorder',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F31.9',
    label: 'Bipolar disorder, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.0',
    label: 'Major depressive disorder, single episode, mild',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.1',
    label: 'Major depressive disorder, single episode, moderate',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.2',
    label: 'Major depressive disorder, single episode, severe without psychotic features',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.3',
    label: 'Major depressive disorder, single episode, severe with psychotic features',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.4',
    label: 'Major depressive disorder, single episode, in partial remission',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.5',
    label: 'Major depressive disorder, single episode, in full remission',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.81',
    label: 'Premenstrual dysphoric disorder',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.89',
    label: 'Other specified depressive episodes',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.9',
    label: 'Major depressive disorder, single episode, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F32.A',
    label: 'Depression, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.0',
    label: 'Major depressive disorder, recurrent, mild',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.1',
    label: 'Major depressive disorder, recurrent, moderate',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.2',
    label: 'Major depressive disorder, recurrent severe without psychotic features',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.3',
    label:
        'Major depressive disorder, recurrent, severe with psychotic symptoms',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.40',
    label: 'Major depressive disorder, recurrent, in remission, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.41',
    label: 'Major depressive disorder, recurrent, in partial remission',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.42',
    label: 'Major depressive disorder, recurrent, in full remission',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.8',
    label: 'Other recurrent depressive disorders',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F33.9',
    label: 'Major depressive disorder, recurrent, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F34.0',
    label: 'Cyclothymic disorder',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F34.1',
    label: 'Dysthymic disorder',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F34.81',
    label: 'Disruptive mood dysregulation disorder',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F34.89',
    label: 'Other specified persistent mood disorders',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F34.9',
    label: 'Persistent mood [affective] disorder, unspecified',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F39',
    label: 'Unspecified mood [affective] disorder',
    category: 'Duygudurum bozuklukları',
  ),
  DiagnosisCode(
    code: 'F40.00',
    label: 'Agoraphobia, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.01',
    label: 'Agoraphobia with panic disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.02',
    label: 'Agoraphobia without panic disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.10',
    label: 'Social phobia, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.11',
    label: 'Social phobia, generalized',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.210',
    label: 'Arachnophobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.218',
    label: 'Other animal type phobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.220',
    label: 'Fear of thunderstorms',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.228',
    label: 'Other natural environment type phobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.230',
    label: 'Fear of blood',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.231',
    label: 'Fear of injections and transfusions',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.232',
    label: 'Fear of other medical care',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.233',
    label: 'Fear of injury',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.240',
    label: 'Claustrophobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.241',
    label: 'Acrophobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.242',
    label: 'Fear of bridges',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.243',
    label: 'Fear of flying',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.248',
    label: 'Other situational type phobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.290',
    label: 'Androphobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.291',
    label: 'Gynephobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.298',
    label: 'Other specified phobia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.8',
    label: 'Other phobic anxiety disorders',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F40.9',
    label: 'Phobic anxiety disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F41.0',
    label: 'Panic disorder [episodic paroxysmal anxiety]',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F41.1',
    label: 'Generalized anxiety disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F41.3',
    label: 'Other mixed anxiety disorders',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F41.8',
    label: 'Other specified anxiety disorders',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F41.9',
    label: 'Anxiety disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F42.2',
    label: 'Mixed obsessional thoughts and acts',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F42.3',
    label: 'Hoarding disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F42.4',
    label: 'Excoriation (skin-picking) disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F42.8',
    label: 'Other obsessive-compulsive disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F42.9',
    label: 'Obsessive-compulsive disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.0',
    label: 'Acute stress reaction',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.10',
    label: 'Post-traumatic stress disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.11',
    label: 'Post-traumatic stress disorder, acute',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.12',
    label: 'Post-traumatic stress disorder, chronic',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.20',
    label: 'Adjustment disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.21',
    label: 'Adjustment disorder with depressed mood',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.22',
    label: 'Adjustment disorder with anxiety',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.23',
    label: 'Adjustment disorder with mixed anxiety and depressed mood',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.24',
    label: 'Adjustment disorder with disturbance of conduct',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.25',
    label: 'Adjustment disorder with mixed disturbance of emotions and conduct',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.29',
    label: 'Adjustment disorder with other symptoms',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.81',
    label: 'Prolonged grief disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.89',
    label: 'Other reactions to severe stress',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F43.9',
    label: 'Reaction to severe stress, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.0',
    label: 'Dissociative amnesia',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.1',
    label: 'Dissociative fugue',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.2',
    label: 'Dissociative stupor',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.4',
    label: 'Conversion disorder with motor symptom or deficit',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.5',
    label: 'Conversion disorder with seizures or convulsions',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.6',
    label: 'Conversion disorder with sensory symptom or deficit',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.7',
    label: 'Conversion disorder with mixed symptom presentation',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.81',
    label: 'Dissociative identity disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.89',
    label: 'Other dissociative and conversion disorders',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F44.9',
    label: 'Dissociative and conversion disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.0',
    label: 'Somatization disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.1',
    label: 'Undifferentiated somatoform disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.20',
    label: 'Hypochondriacal disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.21',
    label: 'Hypochondriasis',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.22',
    label: 'Body dysmorphic disorder',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.29',
    label: 'Other hypochondriacal disorders',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.41',
    label: 'Pain disorder exclusively related to psychological factors',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.42',
    label: 'Pain disorder with related psychological factors',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.8',
    label: 'Other somatoform disorders',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F45.9',
    label: 'Somatoform disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F48.1',
    label: 'Depersonalization-derealization syndrome',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F48.2',
    label: 'Pseudobulbar affect',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F48.8',
    label: 'Other specified nonpsychotic mental disorders',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F48.9',
    label: 'Nonpsychotic mental disorder, unspecified',
    category: 'Anksiyete, dissosiyatif ve stresle ilişkili bozukluklar',
  ),
  DiagnosisCode(
    code: 'F50.00',
    label: 'Anorexia nervosa, unspecified',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.010',
    label: 'Anorexia nervosa, restricting type, mild',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.011',
    label: 'Anorexia nervosa, restricting type, moderate',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.012',
    label: 'Anorexia nervosa, restricting type, severe',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.013',
    label: 'Anorexia nervosa, restricting type, extreme',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.014',
    label: 'Anorexia nervosa, restricting type, in remission',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.019',
    label: 'Anorexia nervosa, restricting type, unspecified',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.020',
    label: 'Anorexia nervosa, binge eating/purging type, mild',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.021',
    label: 'Anorexia nervosa, binge eating/purging type, moderate',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.022',
    label: 'Anorexia nervosa, binge eating/purging type, severe',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.023',
    label: 'Anorexia nervosa, binge eating/purging type, extreme',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.024',
    label: 'Anorexia nervosa, binge eating/purging type, in remission',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.029',
    label: 'Anorexia nervosa, binge eating/purging type, unspecified',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.20',
    label: 'Bulimia nervosa, unspecified',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.21',
    label: 'Bulimia nervosa, mild',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.22',
    label: 'Bulimia nervosa, moderate',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.23',
    label: 'Bulimia nervosa, severe',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.24',
    label: 'Bulimia nervosa, extreme',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.25',
    label: 'Bulimia nervosa, in remission',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.810',
    label: 'Binge eating disorder, mild',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.811',
    label: 'Binge eating disorder, moderate',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.812',
    label: 'Binge eating disorder, severe',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.813',
    label: 'Binge eating disorder, extreme',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.814',
    label: 'Binge eating disorder, in remission',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.819',
    label: 'Binge eating disorder, unspecified',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.82',
    label: 'Avoidant/restrictive food intake disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.83',
    label: 'Pica in adults',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.84',
    label: 'Rumination disorder in adults',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.89',
    label: 'Other specified eating disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F50.9',
    label: 'Eating disorder, unspecified',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.01',
    label: 'Primary insomnia',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.02',
    label: 'Adjustment insomnia',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.03',
    label: 'Paradoxical insomnia',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.04',
    label: 'Psychophysiologic insomnia',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.05',
    label: 'Insomnia due to other mental disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.09',
    label: 'Other insomnia not due to a substance or known physiological condition',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.11',
    label: 'Primary hypersomnia',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.12',
    label: 'Insufficient sleep syndrome',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.13',
    label: 'Hypersomnia due to other mental disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.19',
    label: 'Other hypersomnia not due to a substance or known physiological condition',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.3',
    label: 'Sleepwalking [somnambulism]',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.4',
    label: 'Sleep terrors [night terrors]',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.5',
    label: 'Nightmare disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.8',
    label: 'Other sleep disorders not due to a substance or known physiological condition',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F51.9',
    label: 'Sleep disorder not due to a substance or known physiological condition, unspecified',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.0',
    label: 'Hypoactive sexual desire disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.1',
    label: 'Sexual aversion disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.21',
    label: 'Male erectile disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.22',
    label: 'Female sexual arousal disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.31',
    label: 'Female orgasmic disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.32',
    label: 'Male orgasmic disorder',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.4',
    label: 'Premature ejaculation',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.5',
    label: 'Vaginismus not due to a substance or known physiological condition',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.6',
    label:
        'Dyspareunia not due to a substance or known physiological condition',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.8',
    label: 'Other sexual dysfunction not due to a substance or known physiological condition',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F52.9',
    label: 'Unspecified sexual dysfunction not due to a substance or known physiological condition',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F53.0',
    label: 'Postpartum depression',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F53.1',
    label: 'Puerperal psychosis',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F54',
    label: 'Psychological and behavioral factors associated with disorders or diseases classified elsewhere',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F55.0',
    label: 'Abuse of antacids',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F55.1',
    label: 'Abuse of herbal or folk remedies',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F55.2',
    label: 'Abuse of laxatives',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F55.3',
    label: 'Abuse of steroids or hormones',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F55.4',
    label: 'Abuse of vitamins',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F55.8',
    label: 'Abuse of other non-psychoactive substances',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F59',
    label: 'Unspecified behavioral syndromes associated with physiological disturbances and physical factors',
    category: 'Beslenme, uyku ve fizyolojik etkenlerle ilişkili sendromlar',
  ),
  DiagnosisCode(
    code: 'F60.0',
    label: 'Paranoid personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.1',
    label: 'Schizoid personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.2',
    label: 'Antisocial personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.3',
    label: 'Borderline personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.4',
    label: 'Histrionic personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.5',
    label: 'Obsessive-compulsive personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.6',
    label: 'Avoidant personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.7',
    label: 'Dependent personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.81',
    label: 'Narcissistic personality disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.89',
    label: 'Other specific personality disorders',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F60.9',
    label: 'Personality disorder, unspecified',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F63.0',
    label: 'Pathological gambling',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F63.1',
    label: 'Pyromania',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F63.2',
    label: 'Kleptomania',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F63.3',
    label: 'Trichotillomania',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F63.81',
    label: 'Intermittent explosive disorder',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F63.89',
    label: 'Other impulse disorders',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F63.9',
    label: 'Impulse disorder, unspecified',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F64.0',
    label: 'Transsexualism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F64.1',
    label: 'Dual role transvestism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F64.2',
    label: 'Gender identity disorder of childhood',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F64.8',
    label: 'Other gender identity disorders',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F64.9',
    label: 'Gender identity disorder, unspecified',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.0',
    label: 'Fetishism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.1',
    label: 'Transvestic fetishism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.2',
    label: 'Exhibitionism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.3',
    label: 'Voyeurism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.4',
    label: 'Pedophilia',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.50',
    label: 'Sadomasochism, unspecified',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.51',
    label: 'Sexual masochism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.52',
    label: 'Sexual sadism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.81',
    label: 'Frotteurism',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.89',
    label: 'Other paraphilias',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F65.9',
    label: 'Paraphilia, unspecified',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F66',
    label: 'Other sexual disorders',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F68.10',
    label: 'Factitious disorder imposed on self, unspecified',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F68.11',
    label: 'Factitious disorder imposed on self, with predominantly psychological signs and symptoms',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F68.12',
    label: 'Factitious disorder imposed on self, with predominantly physical signs and symptoms',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F68.13',
    label: 'Factitious disorder imposed on self, with combined psychological and physical signs and symptoms',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F68.8',
    label: 'Other specified disorders of adult personality and behavior',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F68.A',
    label: 'Factitious disorder imposed on another',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F69',
    label: 'Unspecified disorder of adult personality and behavior',
    category: 'Kişilik ve yetişkin davranış bozuklukları',
  ),
  DiagnosisCode(
    code: 'F70',
    label: 'Mild intellectual disabilities',
    category: 'Entelektüel gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F71',
    label: 'Moderate intellectual disabilities',
    category: 'Entelektüel gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F72',
    label: 'Severe intellectual disabilities',
    category: 'Entelektüel gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F73',
    label: 'Profound intellectual disabilities',
    category: 'Entelektüel gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F78.A1',
    label: 'SYNGAP1-related intellectual disability',
    category: 'Entelektüel gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F78.A9',
    label: 'Other genetic related intellectual disability',
    category: 'Entelektüel gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F79',
    label: 'Unspecified intellectual disabilities',
    category: 'Entelektüel gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F80.0',
    label: 'Phonological disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F80.1',
    label: 'Expressive language disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F80.2',
    label: 'Mixed receptive-expressive language disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F80.4',
    label: 'Speech and language development delay due to hearing loss',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F80.81',
    label: 'Childhood onset fluency disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F80.82',
    label: 'Social pragmatic communication disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F80.89',
    label: 'Other developmental disorders of speech and language',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F80.9',
    label: 'Developmental disorder of speech and language, unspecified',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F81.0',
    label: 'Specific reading disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F81.2',
    label: 'Mathematics disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F81.81',
    label: 'Disorder of written expression',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F81.89',
    label: 'Other developmental disorders of scholastic skills',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F81.9',
    label: 'Developmental disorder of scholastic skills, unspecified',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F82',
    label: 'Specific developmental disorder of motor function',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F84.0',
    label: 'Autistic disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F84.2',
    label: 'Rett\'s syndrome',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F84.3',
    label: 'Other childhood disintegrative disorder',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F84.5',
    label: 'Asperger\'s syndrome',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F84.8',
    label: 'Other pervasive developmental disorders',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F84.9',
    label: 'Pervasive developmental disorder, unspecified',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F88',
    label: 'Other disorders of psychological development',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F89',
    label: 'Unspecified disorder of psychological development',
    category: 'Nörogelişimsel ve psikolojik gelişim bozuklukları',
  ),
  DiagnosisCode(
    code: 'F90.0',
    label: 'Attention-deficit hyperactivity disorder, predominantly inattentive type',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F90.1',
    label: 'Attention-deficit hyperactivity disorder, predominantly hyperactive type',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F90.2',
    label: 'Attention-deficit hyperactivity disorder, combined type',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F90.8',
    label: 'Attention-deficit hyperactivity disorder, other type',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F90.9',
    label: 'Attention-deficit hyperactivity disorder, unspecified type',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F91.0',
    label: 'Conduct disorder confined to family context',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F91.1',
    label: 'Conduct disorder, childhood-onset type',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F91.2',
    label: 'Conduct disorder, adolescent-onset type',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F91.3',
    label: 'Oppositional defiant disorder',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F91.8',
    label: 'Other conduct disorders',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F91.9',
    label: 'Conduct disorder, unspecified',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F93.0',
    label: 'Separation anxiety disorder of childhood',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F93.8',
    label: 'Other childhood emotional disorders',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F93.9',
    label: 'Childhood emotional disorder, unspecified',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F94.0',
    label: 'Selective mutism',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F94.1',
    label: 'Reactive attachment disorder of childhood',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F94.2',
    label: 'Disinhibited attachment disorder of childhood',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F94.8',
    label: 'Other childhood disorders of social functioning',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F94.9',
    label: 'Childhood disorder of social functioning, unspecified',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F95.0',
    label: 'Transient tic disorder',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F95.1',
    label: 'Chronic motor or vocal tic disorder',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F95.2',
    label: 'Tourette\'s disorder',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F95.8',
    label: 'Other tic disorders',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F95.9',
    label: 'Tic disorder, unspecified',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.0',
    label: 'Enuresis not due to a substance or known physiological condition',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.1',
    label: 'Encopresis not due to a substance or known physiological condition',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.21',
    label: 'Rumination disorder of infancy and childhood',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.29',
    label: 'Other feeding disorders of infancy and early childhood',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.3',
    label: 'Pica of infancy and childhood',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.4',
    label: 'Stereotyped movement disorders',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.5',
    label: 'Adult onset fluency disorder',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.8',
    label: 'Other specified behavioral and emotional disorders with onset usually occurring in childhood and adolescence',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F98.9',
    label: 'Unspecified behavioral and emotional disorders with onset usually occurring in childhood and adolescence',
    category:
        'Çocukluk ve ergenlik başlangıçlı davranışsal/duygusal bozukluklar',
  ),
  DiagnosisCode(
    code: 'F99',
    label: 'Mental disorder, not otherwise specified',
    category: 'Belirtilmemiş ruhsal bozukluk',
  ),
  DiagnosisCode(
    code: 'R45.88',
    label: 'Nonsuicidal self-harm',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.0',
    label: 'Illiteracy and low-level literacy',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.1',
    label: 'Schooling unavailable and unattainable',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.2',
    label: 'Failed school examinations',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.3',
    label: 'Underachievement in school',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.4',
    label: 'Educational maladjustment and discord with teachers and classmates',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.5',
    label: 'Less than a high school diploma',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.6',
    label: 'Problems related to health literacy',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.8',
    label: 'Other problems related to education and literacy',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z55.9',
    label: 'Problems related to education and literacy, unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.0',
    label: 'Unemployment, unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.1',
    label: 'Change of job',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.2',
    label: 'Threat of job loss',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.3',
    label: 'Stressful work schedule',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.4',
    label: 'Discord with boss and workmates',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.5',
    label: 'Uncongenial work environment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.6',
    label: 'Other physical and mental strain related to work',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.81',
    label: 'Sexual harassment on the job',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.82',
    label: 'Military deployment status',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.89',
    label: 'Other problems related to employment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z56.9',
    label: 'Unspecified problems related to employment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.0',
    label: 'Occupational exposure to noise',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.1',
    label: 'Occupational exposure to radiation',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.2',
    label: 'Occupational exposure to dust',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.31',
    label: 'Occupational exposure to environmental tobacco smoke',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.39',
    label: 'Occupational exposure to other air contaminants',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.4',
    label: 'Occupational exposure to toxic agents in agriculture',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.5',
    label: 'Occupational exposure to toxic agents in other industries',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.6',
    label: 'Occupational exposure to extreme temperature',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.7',
    label: 'Occupational exposure to vibration',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.8',
    label: 'Occupational exposure to other risk factors',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z57.9',
    label: 'Occupational exposure to unspecified risk factor',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z58.6',
    label: 'Inadequate drinking-water supply',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z58.81',
    label: 'Basic services unavailable in physical environment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z58.89',
    label: 'Other problems related to physical environment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.00',
    label: 'Homelessness unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.01',
    label: 'Sheltered homelessness',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.02',
    label: 'Unsheltered homelessness',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.10',
    label: 'Inadequate housing, unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.11',
    label: 'Inadequate housing environmental temperature',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.12',
    label: 'Inadequate housing utilities',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.19',
    label: 'Other inadequate housing',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.2',
    label: 'Discord with neighbors, lodgers and landlord',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.3',
    label: 'Problems related to living in residential institution',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.41',
    label: 'Food insecurity',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.48',
    label: 'Other specified lack of adequate food',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.5',
    label: 'Extreme poverty',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.6',
    label: 'Low income',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.71',
    label: 'Insufficient health insurance coverage',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.72',
    label: 'Insufficient welfare support',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.811',
    label: 'Housing instability, housed, with risk of homelessness',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.812',
    label: 'Housing instability, housed, homelessness in past 12 months',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.819',
    label: 'Housing instability, housed unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.82',
    label: 'Transportation insecurity',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.861',
    label: 'Financial insecurity, difficulty paying for utilities',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.868',
    label: 'Other specified financial insecurity',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.869',
    label: 'Financial insecurity, unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.87',
    label: 'Material hardship due to limited financial resources, not elsewhere classified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.89',
    label: 'Other problems related to housing and economic circumstances',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z59.9',
    label: 'Problem related to housing and economic circumstances, unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z60.0',
    label: 'Problems of adjustment to life-cycle transitions',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z60.2',
    label: 'Problems related to living alone',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z60.3',
    label: 'Acculturation difficulty',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z60.4',
    label: 'Social exclusion and rejection',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z60.5',
    label: 'Target of (perceived) adverse discrimination and persecution',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z60.8',
    label: 'Other problems related to social environment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z60.9',
    label: 'Problem related to social environment, unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.0',
    label: 'Inadequate parental supervision and control',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.1',
    label: 'Parental overprotection',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.21',
    label: 'Child in welfare custody',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.22',
    label: 'Institutional upbringing',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.23',
    label: 'Child in custody of non-parental relative',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.24',
    label: 'Child in custody of non-relative guardian',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.29',
    label: 'Other upbringing away from parents',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.3',
    label: 'Hostility towards and scapegoating of child',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.6',
    label: 'Inappropriate (excessive) parental pressure',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.810',
    label: 'Personal history of physical and sexual abuse in childhood',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.811',
    label: 'Personal history of psychological abuse in childhood',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.812',
    label: 'Personal history of neglect in childhood',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.813',
    label:
        'Personal history of forced labor or sexual exploitation in childhood',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.814',
    label: 'Personal history of child financial abuse',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.815',
    label: 'Personal history of intimate partner abuse in childhood',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.819',
    label: 'Personal history of unspecified abuse in childhood',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.820',
    label: 'Parent-biological child conflict',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.821',
    label: 'Parent-adopted child conflict',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.822',
    label: 'Parent-foster child conflict',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.823',
    label: 'Parent-step child conflict',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.831',
    label: 'Non-parental relative-child conflict',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.832',
    label: 'Non-relative guardian-child conflict',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.833',
    label: 'Group home staff-child conflict',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.890',
    label: 'Parent-child estrangement NEC',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.891',
    label: 'Sibling rivalry',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.892',
    label: 'Runaway [from current living environment]',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.898',
    label: 'Other specified problems related to upbringing',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z62.9',
    label: 'Problem related to upbringing, unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.0',
    label: 'Problems in relationship with spouse or partner',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.1',
    label: 'Problems in relationship with in-laws',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.31',
    label: 'Absence of family member due to military deployment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.32',
    label: 'Other absence of family member',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.4',
    label: 'Disappearance and death of family member',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.5',
    label: 'Disruption of family by separation and divorce',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.6',
    label: 'Dependent relative needing care at home',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.71',
    label: 'Stress on family due to return of family member from military deployment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.72',
    label: 'Alcoholism and drug addiction in family',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.79',
    label: 'Other stressful life events affecting family and household',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.8',
    label: 'Other specified problems related to primary support group',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z63.9',
    label: 'Problem related to primary support group, unspecified',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z64.0',
    label: 'Problems related to unwanted pregnancy',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z64.1',
    label: 'Problems related to multiparity',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z64.4',
    label: 'Discord with counselors',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z65.0',
    label: 'Conviction in civil and criminal proceedings without imprisonment',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z65.1',
    label: 'Imprisonment and other incarceration',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z65.2',
    label: 'Problems related to release from prison',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z65.3',
    label: 'Problems related to other legal circumstances',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z65.4',
    label: 'Victim of crime and terrorism',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z65.5',
    label: 'Exposure to disaster, war and other hostilities',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z65.8',
    label: 'Other specified problems related to psychosocial circumstances',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z65.9',
    label: 'Problem related to unspecified psychosocial circumstances',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z91.51',
    label: 'Personal history of suicidal behavior',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
  DiagnosisCode(
    code: 'Z91.52',
    label: 'Personal history of nonsuicidal self-harm',
    category: 'DSM-5-TR klinik dikkat odağı / güncelleme',
  ),
];

const diagnosisCodeCount = 991;
